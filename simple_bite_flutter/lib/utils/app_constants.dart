class AppConstants {
  const AppConstants._();

  // Base frame size extracted from the public Figma thumbnail.
  static const double figmaFrameWidth = 400.0;
  static const double figmaFrameHeight = 800.0;

  // Positioning for the centered logo block.
  static const double logoCenterYOffset = 34.0;

  // Brand icon metrics.
  static const double brandIconSize = 54.0;
  static const double brandIconRadius = 14.0;
  static const double brandIconToTextGap = 14.0;

  // Wordmark and tagline typography tokens.
  static const double wordmarkFontSize = 30.0;
  static const double wordmarkLineHeight = 1.05;
  static const double taglineFontSize = 11.0;
  static const double taglineLineHeight = 1.15;
  static const double taglineLetterSpacing = 0.05;
  static const double taglineTopSpacing = 2.0;

  // Fork glyph drawing tokens.
  static const double forkGlyphSize = 23.0;
  static const double forkStemWidth = 3.0;
  static const double forkStemTop = 8.0;
  static const double forkStemBottom = 3.0;
  static const double forkProngWidth = 2.0;
  static const double forkProngHeight = 7.0;
  static const double forkProngGap = 3.0;

  // Background blob tokens.
  static const double topLeftBlobSize = 310.0;
  static const double topLeftBlobLeft = -124.0;
  static const double topLeftBlobTop = 120.0;
  static const double topLeftBlobInnerOpacity = 0.95;

  static const double centerBlobSize = 230.0;
  static const double centerBlobLeft = 84.0;
  static const double centerBlobTop = 390.0;
  static const double centerBlobInnerOpacity = 0.55;

  static const double bottomLeftBlobSize = 320.0;
  static const double bottomLeftBlobLeft = -165.0;
  static const double bottomLeftBlobTop = 610.0;
  static const double bottomLeftBlobInnerOpacity = 0.50;

  static const double bottomRightBlobSize = 235.0;
  static const double bottomRightBlobRight = -98.0;
  static const double bottomRightBlobTop = 590.0;
  static const double bottomRightBlobInnerOpacity = 0.45;
  static const double blobOuterOpacity = 0.0;

  // Dot circle tokens.
  static const double centerDotCircleSize = 108.0;
  static const double centerDotCircleLeft = 136.0;
  static const double centerDotCircleTop = 523.0;

  static const double lowerDotCircleSize = 180.0;
  static const double lowerDotCircleLeft = -22.0;
  static const double lowerDotCircleTop = 642.0;
  static const double dotRadius = 1.1;
  static const double dotSpacing = 8.2;
  static const double dotFadeOpacity = 0.8;
}

class AppStrings {
  const AppStrings._();

  static const String appName = "Simple Bite";
  static const String wordmarkPrimary = "Simple";
  static const String wordmarkAccent = "Bite";
  static const String tagline = "Less counting. More living.";
}

