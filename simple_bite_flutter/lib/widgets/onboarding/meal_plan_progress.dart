import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/onboarding_data.dart";
import "../../utils/responsive.dart";

class MealPlanProgressSection extends StatelessWidget {
  const MealPlanProgressSection({
    required this.scale,
    required this.progress,
    super.key,
  });

  final ResponsiveScale scale;
  final double progress;

  @override
  Widget build(BuildContext context) {
    final percentLabel = "${(progress * 100).round()}%";
    return Column(
      children: [
        SizedBox(
          width: scale.w(OnboardingDimens.buildRingSize),
          height: scale.w(OnboardingDimens.buildRingSize),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: 1.0,
                strokeWidth: scale.w(AppStroke.progressRing),
                color: AppColors.progressTrack,
              ),
              CircularProgressIndicator(
                value: progress,
                strokeWidth: scale.w(AppStroke.progressRing),
                color: AppColors.progressActive,
                strokeCap: StrokeCap.round,
              ),
              Text(
                percentLabel,
                style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.largeValue))
                    .copyWith(color: AppColors.heading),
              ),
            ],
          ),
        ),
        SizedBox(height: scale.h(AppSpacing.lg)),
        Text(
          AppStrings.buildPlanSubtitle,
          style: AppTextStyles.screenSubtitle(scale.sp(AppFontSize.sectionTitle))
              .copyWith(color: AppColors.subtitle),
        ),
        SizedBox(height: scale.h(OnboardingDimens.buildChecklistTopSpacing)),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(scale.w(OnboardingDimens.buildChecklistCardPadding)),
          decoration: BoxDecoration(
            color: AppColors.lightPanel,
            borderRadius: BorderRadius.circular(scale.w(AppRadii.largeCard)),
          ),
          child: Column(
            children: List.generate(OnboardingData.buildSteps.length, (index) {
              final completed = index < OnboardingDimens.buildChecklistCompletedCount;
              final current = index == OnboardingDimens.buildChecklistCurrentIndex;
              final icon = completed ? Icons.check_circle_outline : Icons.circle_outlined;
              final color = completed
                  ? AppColors.progressActive
                  : current
                      ? AppColors.subtitle
                      : AppColors.inputBorder;
              final textColor = completed
                  ? AppColors.heading
                  : current
                      ? AppColors.subtitle
                      : AppColors.mutedText;

              return Padding(
                padding: EdgeInsets.only(
                  bottom: index == OnboardingData.buildSteps.length - 1
                      ? 0
                      : scale.h(OnboardingDimens.buildChecklistItemGap),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: scale.h(OnboardingDimens.buildChecklistIconTopPadding),
                      ),
                      child: Icon(
                        icon,
                        size: scale.sp(OnboardingDimens.buildChecklistIconSize),
                        color: color,
                      ),
                    ),
                    SizedBox(width: scale.w(AppSpacing.sm)),
                    Expanded(
                      child: Text(
                        OnboardingData.buildSteps[index],
                        style: AppTextStyles.bodyMedium(scale.sp(AppFontSize.sectionTitle))
                            .copyWith(color: textColor),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

