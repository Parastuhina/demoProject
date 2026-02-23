import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";

/// Reusable logo lockup (icon + wordmark + tagline).
class SimpleBiteLogo extends StatelessWidget {
  const SimpleBiteLogo({
    required this.scale,
    super.key,
  });

  final ResponsiveScale scale;

  @override
  Widget build(BuildContext context) {
    final wordmarkSize = scale.sp(AppConstants.wordmarkFontSize);
    final taglineSize = scale.sp(AppConstants.taglineFontSize);

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SimpleBiteIcon(scale: scale),
        SizedBox(width: scale.w(AppConstants.brandIconToTextGap)),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: AppTextStyles.wordmark(wordmarkSize),
                children: [
                  TextSpan(
                    text: AppStrings.wordmarkPrimary,
                    style: const TextStyle(color: AppColors.wordmarkDark),
                  ),
                  TextSpan(
                    text: AppStrings.wordmarkAccent,
                    style: const TextStyle(color: AppColors.wordmarkGreen),
                  ),
                ],
              ),
            ),
            SizedBox(height: scale.h(AppConstants.taglineTopSpacing)),
            Text(
              AppStrings.tagline,
              style: AppTextStyles.tagline(taglineSize).copyWith(
                color: AppColors.tagline,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SimpleBiteIcon extends StatelessWidget {
  const _SimpleBiteIcon({
    required this.scale,
  });

  final ResponsiveScale scale;

  @override
  Widget build(BuildContext context) {
    final iconSize = scale.w(AppConstants.brandIconSize);

    return Container(
      width: iconSize,
      height: iconSize,
      decoration: BoxDecoration(
        color: AppColors.iconGreen,
        borderRadius: BorderRadius.circular(scale.w(AppConstants.brandIconRadius)),
      ),
      child: Center(
        child: SizedBox(
          width: scale.w(AppConstants.forkGlyphSize),
          height: scale.w(AppConstants.forkGlyphSize),
          child: CustomPaint(
            painter: _ForkGlyphPainter(
              color: AppColors.iconFork,
              stemWidth: scale.w(AppConstants.forkStemWidth),
              stemTop: scale.w(AppConstants.forkStemTop),
              stemBottomInset: scale.w(AppConstants.forkStemBottom),
              prongWidth: scale.w(AppConstants.forkProngWidth),
              prongHeight: scale.w(AppConstants.forkProngHeight),
              prongGap: scale.w(AppConstants.forkProngGap),
            ),
          ),
        ),
      ),
    );
  }
}

class _ForkGlyphPainter extends CustomPainter {
  const _ForkGlyphPainter({
    required this.color,
    required this.stemWidth,
    required this.stemTop,
    required this.stemBottomInset,
    required this.prongWidth,
    required this.prongHeight,
    required this.prongGap,
  });

  final Color color;
  final double stemWidth;
  final double stemTop;
  final double stemBottomInset;
  final double prongWidth;
  final double prongHeight;
  final double prongGap;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final centerX = size.width / 2;
    final stemRect = RRect.fromRectAndRadius(
      Rect.fromLTWH(
        centerX - (stemWidth / 2),
        stemTop,
        stemWidth,
        size.height - stemTop - stemBottomInset,
      ),
      Radius.circular(stemWidth),
    );
    canvas.drawRRect(stemRect, paint);

    final leftProngX = centerX - prongGap - prongWidth;
    final middleProngX = centerX - (prongWidth / 2);
    final rightProngX = centerX + prongGap;

    final prongRects = [
      Rect.fromLTWH(leftProngX, 0, prongWidth, prongHeight),
      Rect.fromLTWH(middleProngX, 0, prongWidth, prongHeight),
      Rect.fromLTWH(rightProngX, 0, prongWidth, prongHeight),
    ];

    for (final rect in prongRects) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, Radius.circular(prongWidth)),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _ForkGlyphPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.stemWidth != stemWidth ||
        oldDelegate.stemTop != stemTop ||
        oldDelegate.stemBottomInset != stemBottomInset ||
        oldDelegate.prongWidth != prongWidth ||
        oldDelegate.prongHeight != prongHeight ||
        oldDelegate.prongGap != prongGap;
  }
}

