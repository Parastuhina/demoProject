import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/onboarding_models.dart";
import "../../utils/responsive.dart";

class TargetCard extends StatelessWidget {
  const TargetCard({
    required this.scale,
    required this.item,
    super.key,
  });

  final ResponsiveScale scale;
  final MacroTargetItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scale.h(OnboardingDimens.targetCardHeight),
      padding: EdgeInsets.all(scale.w(AppSpacing.md)),
      decoration: BoxDecoration(
        color: AppColors.lightPanel,
        borderRadius: BorderRadius.circular(scale.w(AppRadii.largeCard)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: scale.w(OnboardingDimens.targetIconBubbleSize),
                height: scale.w(OnboardingDimens.targetIconBubbleSize),
                decoration: BoxDecoration(
                  color: item.iconBackground,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  item.icon,
                  color: item.progressColor,
                  size: scale.sp(OnboardingDimens.targetIconSize),
                ),
              ),
              SizedBox(width: scale.w(AppSpacing.xs)),
              Text(
                item.title,
                style: AppTextStyles.bodyStrong(scale.sp(AppFontSize.sectionTitle))
                    .copyWith(color: AppColors.strongText),
              ),
            ],
          ),
          const Spacer(),
          Text(
            item.value,
            style: AppTextStyles.sectionTitle(
              scale.sp(OnboardingDimens.targetValueSize),
            ).copyWith(
              color: AppColors.heading,
            ),
          ),
          SizedBox(height: scale.h(AppSpacing.xs)),
          Stack(
            children: [
              Container(
                width: scale.w(OnboardingDimens.targetProgressWidth),
                height: scale.h(AppStroke.targetProgress),
                decoration: BoxDecoration(
                  color: AppColors.progressTrack,
                  borderRadius: BorderRadius.circular(scale.w(AppRadii.full)),
                ),
              ),
              Container(
                width: scale.w(OnboardingDimens.targetProgressWidth * item.progress),
                height: scale.h(AppStroke.targetProgress),
                decoration: BoxDecoration(
                  color: item.progressColor,
                  borderRadius: BorderRadius.circular(scale.w(AppRadii.full)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

