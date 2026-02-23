import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";

class CenterMessagePanel extends StatelessWidget {
  const CenterMessagePanel({
    required this.scale,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.highlightText,
    super.key,
  });

  final ResponsiveScale scale;
  final IconData icon;
  final String title;
  final String subtitle;
  final String? highlightText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: scale.sp(OnboardingDimens.centerIconSize),
          color: AppColors.heading,
        ),
        SizedBox(height: scale.h(OnboardingDimens.centerTitleTopSpacing)),
        Text(
          title,
          style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.heading))
              .copyWith(color: AppColors.heading),
        ),
        SizedBox(height: scale.h(OnboardingDimens.centerSubtitleTopSpacing)),
        Text(
          subtitle,
          style: AppTextStyles.screenSubtitle(scale.sp(AppFontSize.sectionTitle))
              .copyWith(color: AppColors.subtitle),
        ),
        if (highlightText != null)
          Padding(
            padding: EdgeInsets.only(top: scale.h(AppSpacing.xs)),
            child: Text(
              highlightText!,
              style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.sectionTitle))
                  .copyWith(color: AppColors.heading),
            ),
          ),
      ],
    );
  }
}

