import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/onboarding_models.dart";
import "../../utils/responsive.dart";

class WhatsInsideCard extends StatelessWidget {
  const WhatsInsideCard({
    required this.scale,
    required this.item,
    super.key,
  });

  final ResponsiveScale scale;
  final WhatsInsideItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scale.h(OnboardingDimens.whatsInsideCardHeight),
      padding: EdgeInsets.symmetric(
        horizontal: scale.w(AppSpacing.xs),
        vertical: scale.h(AppSpacing.sm),
      ),
      decoration: BoxDecoration(
        color: AppColors.lightPanel,
        borderRadius: BorderRadius.circular(scale.w(AppRadii.card)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: scale.w(OnboardingDimens.insideIconBubbleSize),
            height: scale.w(OnboardingDimens.insideIconBubbleSize),
            decoration: BoxDecoration(
              color: item.iconBackground,
              shape: BoxShape.circle,
            ),
            child: Icon(
              item.icon,
              color: Colors.white,
              size: scale.sp(OnboardingDimens.insideIconSize),
            ),
          ),
          SizedBox(height: scale.h(AppSpacing.xs)),
          Text(
            item.title,
            textAlign: TextAlign.center,
            style: AppTextStyles.bodyStrong(scale.sp(AppFontSize.tiny))
                .copyWith(color: AppColors.heading),
          ),
          SizedBox(height: scale.h(AppSpacing.xxs)),
          Expanded(
            child: Text(
              item.subtitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyRegular(
                scale.sp(OnboardingDimens.insideSubtitleFontSize),
              ).copyWith(
                color: AppColors.subtitle,
                height: 1.25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

