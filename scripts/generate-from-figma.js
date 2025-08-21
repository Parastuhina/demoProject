'use strict';

const fs = require('fs');
const path = require('path');
const axios = require('axios');
const slugify = require('slugify');

const FIGMA_API_BASE = 'https://api.figma.com/v1';

function ensureDir(dirPath) {
  if (!fs.existsSync(dirPath)) {
    fs.mkdirSync(dirPath, { recursive: true });
  }
}

function writeFileSyncSafe(filePath, content) {
  ensureDir(path.dirname(filePath));
  fs.writeFileSync(filePath, content);
}

function getEnv(name, fallback = undefined) {
  const value = process.env[name] || fallback;
  if (!value) {
    console.error(`Missing required env var ${name}`);
    process.exit(1);
  }
  return value;
}

function buildClient(token) {
  return axios.create({
    baseURL: FIGMA_API_BASE,
    headers: {
      'X-Figma-Token': token,
    },
    timeout: 60000,
  });
}

function renderIndexHtml(pages) {
  const links = pages
    .map(
      (p) =>
        `<li><a href="${encodeURI(p.outputHtmlRelative)}">${p.title}</a> (${p.frames.length} frames)</li>`
    )
    .join('\n');
  return `<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Figma Export</title>
    <style>
      body{font-family:system-ui,-apple-system,Segoe UI,Roboto,Ubuntu,Cantarell,Noto Sans,sans-serif;line-height:1.5;margin:24px;}
      a{color:#0b69ff;text-decoration:none}
      a:hover{text-decoration:underline}
    </style>
  </head>
  <body>
    <h1>Figma Export</h1>
    <ul>${links}</ul>
  </body>
</html>`;
}

function renderPageHtml(page) {
  const items = page.frames
    .map((f) => {
      return `
      <section>
        <h2 id="${f.id}">${f.name}</h2>
        <figure>
          <img src="${encodeURI(f.imageRelative)}" alt="${f.name}" loading="lazy" />
          <figcaption>${f.name}</figcaption>
        </figure>
      </section>`;
    })
    .join('\n');

  return `<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${page.title}</title>
    <style>
      body{font-family:system-ui,-apple-system,Segoe UI,Roboto,Ubuntu,Cantarell,Noto Sans,sans-serif;line-height:1.5;margin:24px;}
      img{max-width:100%;height:auto;border:1px solid #e5e7eb;border-radius:8px}
      section{margin:32px 0}
      h1,h2{line-height:1.2}
      nav{position:sticky;top:0;background:#fff;padding:8px 0;margin:-8px 0 16px 0}
    </style>
  </head>
  <body>
    <nav><a href="../index.html">← Back</a></nav>
    <h1>${page.title}</h1>
    ${items}
  </body>
</html>`;
}

async function main() {
  const token = getEnv('FIGMA_TOKEN');
  const figmaFileKey = process.env.FIGMA_FILE_KEY || 'QkjMXah9PJJeaaEYf9NfEJ';
  const outputDir = path.resolve(process.cwd(), 'dist');
  const imagesDir = path.join(outputDir, 'images');

  ensureDir(outputDir);
  ensureDir(imagesDir);

  const client = buildClient(token);

  console.log('Fetching file structure...');
  const fileRes = await client.get(`/files/${figmaFileKey}`);
  const document = fileRes.data.document;
  if (!document || !Array.isArray(document.children)) {
    throw new Error('Unexpected Figma document format');
  }

  const pages = document.children
    .filter((node) => node.type === 'CANVAS')
    .map((page) => ({
      id: page.id,
      title: page.name,
      frames: (page.children || []).filter((n) => n.type === 'FRAME' || n.type === 'COMPONENT' || n.type === 'COMPONENT_SET' || n.type === 'INSTANCE'),
    }));

  const allNodeIds = [];
  for (const page of pages) {
    for (const frame of page.frames) {
      allNodeIds.push(frame.id);
    }
  }

  console.log(`Found ${pages.length} pages and ${allNodeIds.length} frames`);

  // Figma images endpoint accepts comma-separated ids
  const chunkSize = 150; // stay well within URL length and rate limits
  const imageMap = new Map();
  for (let i = 0; i < allNodeIds.length; i += chunkSize) {
    const chunk = allNodeIds.slice(i, i + chunkSize);
    console.log(`Requesting images for ${chunk.length} nodes...`);
    const imagesRes = await client.get(`/images/${figmaFileKey}`, {
      params: {
        ids: chunk.join(','),
        format: 'png',
        scale: 2,
      },
    });
    const images = imagesRes.data.images || {};
    for (const [id, url] of Object.entries(images)) {
      imageMap.set(id, url);
    }
  }

  // Download images
  async function downloadImage(url, destPath) {
    const res = await axios.get(url, { responseType: 'arraybuffer' });
    writeFileSyncSafe(destPath, Buffer.from(res.data));
  }

  // Build page objects with output paths
  const pageOutputs = [];
  for (const page of pages) {
    const pageSlug = slugify(page.title, { lower: true, strict: true }) || 'page';
    const pageDir = path.join(outputDir, pageSlug);
    ensureDir(pageDir);

    const frames = [];
    for (const frame of page.frames) {
      const frameSlug = slugify(frame.name, { lower: true, strict: true }) || 'frame';
      const imageFile = `${pageSlug}-${frameSlug}-${frame.id}.png`;
      const imagePath = path.join(imagesDir, imageFile);
      const imageRelative = path.relative(pageDir, imagePath);
      const url = imageMap.get(frame.id);
      if (url) {
        try {
          await downloadImage(url, imagePath);
        } catch (e) {
          console.warn(`Failed to download image for ${frame.name}: ${e.message}`);
        }
      }
      frames.push({
        id: frame.id,
        name: frame.name,
        imageRelative,
      });
    }

    const outputHtml = path.join(pageDir, 'index.html');
    const outputHtmlRelative = path.relative(outputDir, outputHtml);
    const pageObj = { title: page.title, frames, outputHtml, outputHtmlRelative };
    pageOutputs.push(pageObj);
    writeFileSyncSafe(outputHtml, renderPageHtml(pageObj));
  }

  // Write index
  writeFileSyncSafe(path.join(outputDir, 'index.html'), renderIndexHtml(pageOutputs));

  console.log('Done. Open dist/index.html');
}

main().catch((err) => {
  console.error(err);
  process.exit(1);
});

