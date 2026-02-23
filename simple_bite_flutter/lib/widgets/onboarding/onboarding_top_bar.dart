import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";

class OnboardingTopBar extends StatelessWidget {
  const OnboardingTopBar({
    required this.scale,
    required this.title,
    this.showBack = true,
    this.onBack,
    super.key,
  });

  final ResponsiveScale scale;
  final String title;
  final bool showBack;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.of(context).canPop();

    return SizedBox(
      height: scale.h(OnboardingDimens.topBarHeight),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (showBack)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: onBack ?? (canPop ? () => Navigator.of(context).maybePop() : () {}),
                icon: const Icon(Icons.arrow_back_rounded),
                iconSize: scale.sp(OnboardingDimens.backIconSize),
                color: AppColors.heading,
                splashRadius: scale.w(OnboardingDimens.backIconSplashRadius),
              ),
            ),
          Center(
            child: Text(
              title,
              style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.heading))
                  .copyWith(color: AppColors.heading),
            ),
          ),
        ],
      ),
    );
  }
}

