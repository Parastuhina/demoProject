import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";
import "dot_pattern_circle.dart";

/// Reusable decorative background that mirrors the Figma splash art direction.
class SoftGradientBackground extends StatelessWidget {
  const SoftGradientBackground({
    required this.scale,
    super.key,
  });

  final ResponsiveScale scale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                AppColors.gradientTop,
                AppColors.gradientBottom,
              ],
            ),
          ),
        ),
        _GlowBlob(
          left: scale.w(AppConstants.topLeftBlobLeft),
          top: scale.h(AppConstants.topLeftBlobTop),
          size: scale.w(AppConstants.topLeftBlobSize),
          innerColor: AppColors.glowMintSoft.withOpacity(
            AppConstants.topLeftBlobInnerOpacity,
          ),
          outerColor: AppColors.glowMintSoft.withOpacity(
            AppConstants.blobOuterOpacity,
          ),
        ),
        _GlowBlob(
          left: scale.w(AppConstants.centerBlobLeft),
          top: scale.h(AppConstants.centerBlobTop),
          size: scale.w(AppConstants.centerBlobSize),
          innerColor: AppColors.glowMintMid.withOpacity(
            AppConstants.centerBlobInnerOpacity,
          ),
          outerColor: AppColors.glowMintMid.withOpacity(
            AppConstants.blobOuterOpacity,
          ),
        ),
        _GlowBlob(
          left: scale.w(AppConstants.bottomLeftBlobLeft),
          top: scale.h(AppConstants.bottomLeftBlobTop),
          size: scale.w(AppConstants.bottomLeftBlobSize),
          innerColor: AppColors.glowMintDeep.withOpacity(
            AppConstants.bottomLeftBlobInnerOpacity,
          ),
          outerColor: AppColors.glowMintDeep.withOpacity(
            AppConstants.blobOuterOpacity,
          ),
        ),
        _GlowBlob(
          right: scale.w(AppConstants.bottomRightBlobRight),
          top: scale.h(AppConstants.bottomRightBlobTop),
          size: scale.w(AppConstants.bottomRightBlobSize),
          innerColor: AppColors.glowMintSoft.withOpacity(
            AppConstants.bottomRightBlobInnerOpacity,
          ),
          outerColor: AppColors.glowMintSoft.withOpacity(
            AppConstants.blobOuterOpacity,
          ),
        ),
        Positioned(
          left: scale.w(AppConstants.centerDotCircleLeft),
          top: scale.h(AppConstants.centerDotCircleTop),
          child: DotPatternCircle(
            diameter: scale.w(AppConstants.centerDotCircleSize),
            dotRadius: scale.w(AppConstants.dotRadius),
            dotSpacing: scale.w(AppConstants.dotSpacing),
            color: AppColors.dotPattern,
          ),
        ),
        Positioned(
          left: scale.w(AppConstants.lowerDotCircleLeft),
          top: scale.h(AppConstants.lowerDotCircleTop),
          child: DotPatternCircle(
            diameter: scale.w(AppConstants.lowerDotCircleSize),
            dotRadius: scale.w(AppConstants.dotRadius),
            dotSpacing: scale.w(AppConstants.dotSpacing),
            color: AppColors.dotPattern,
          ),
        ),
      ],
    );
  }
}

class _GlowBlob extends StatelessWidget {
  const _GlowBlob({
    required this.top,
    required this.size,
    required this.innerColor,
    required this.outerColor,
    this.left,
    this.right,
  });

  final double top;
  final double size;
  final double? left;
  final double? right;
  final Color innerColor;
  final Color outerColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      top: top,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [innerColor, outerColor],
            stops: const [0.0, 1.0],
          ),
        ),
      ),
    );
  }
}

