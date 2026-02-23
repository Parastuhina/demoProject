import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/onboarding_data.dart";
import "../../utils/responsive.dart";
import "../../widgets/common/bottom_action_panel.dart";
import "../../widgets/onboarding/target_card.dart";
import "../../widgets/onboarding/whats_inside_card.dart";

class CongratulationsSummaryScreen extends StatelessWidget {
  const CongratulationsSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = ResponsiveScale(constraints.biggest);

        return Scaffold(
          backgroundColor: AppColors.paleBackground,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(
                    scale.w(OnboardingDimens.horizontalPadding),
                    scale.h(AppSpacing.md),
                    scale.w(OnboardingDimens.horizontalPadding),
                    scale.h(AppSpacing.xl),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.lightPanel,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(scale.w(OnboardingDimens.congratsTopPanelRadius)),
                      bottomRight:
                          Radius.circular(scale.w(OnboardingDimens.congratsTopPanelRadius)),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: scale.sp(OnboardingDimens.centerIconSummary),
                        color: AppColors.heading,
                      ),
                      SizedBox(height: scale.h(AppSpacing.sm)),
                      Text(
                        AppStrings.congratsTitle,
                        style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.heading))
                            .copyWith(color: AppColors.heading),
                      ),
                      SizedBox(height: scale.h(AppSpacing.xs)),
                      Text(
                        AppStrings.congratsSubtitle,
                        style: AppTextStyles.screenSubtitle(scale.sp(AppFontSize.sectionTitle))
                            .copyWith(color: AppColors.subtitle),
                      ),
                      SizedBox(height: scale.h(AppSpacing.lg)),
                      Text(
                        AppStrings.congratsGoalPrefix,
                        style: AppTextStyles.bodyStrong(scale.sp(AppFontSize.sectionTitle))
                            .copyWith(color: AppColors.heading),
                      ),
                      SizedBox(height: scale.h(AppSpacing.xs)),
                      Text(
                        AppStrings.congratsGoal,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.sectionTitle))
                            .copyWith(color: AppColors.heading),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.fromLTRB(
                      scale.w(OnboardingDimens.horizontalPadding),
                      scale.h(AppSpacing.lg),
                      scale.w(OnboardingDimens.horizontalPadding),
                      scale.h(AppSpacing.lg),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.dailyTargetsTitle,
                          style: AppTextStyles.bodyStrong(scale.sp(AppFontSize.sectionTitle))
                              .copyWith(color: AppColors.heading),
                        ),
                        SizedBox(height: scale.h(AppSpacing.sm)),
                        GridView.builder(
                          itemCount: OnboardingData.targets.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: OnboardingDimens.summaryTargetColumns,
                            mainAxisSpacing: scale.h(AppSpacing.md),
                            crossAxisSpacing: scale.w(AppSpacing.md),
                            childAspectRatio: OnboardingDimens.summaryTargetAspectRatio,
                          ),
                          itemBuilder: (_, index) {
                            return TargetCard(
                              scale: scale,
                              item: OnboardingData.targets[index],
                            );
                          },
                        ),
                        SizedBox(height: scale.h(AppSpacing.lg)),
                        Center(
                          child: Text(
                            AppStrings.whatsInsideTitle,
                            style: AppTextStyles.sectionTitle(scale.sp(AppFontSize.sectionTitle))
                                .copyWith(color: AppColors.heading),
                          ),
                        ),
                        SizedBox(height: scale.h(AppSpacing.sm)),
                        Row(
                          children: [
                            Expanded(
                              child: WhatsInsideCard(
                                scale: scale,
                                item: OnboardingData.whatsInside[0],
                              ),
                            ),
                            SizedBox(width: scale.w(AppSpacing.sm)),
                            Expanded(
                              child: WhatsInsideCard(
                                scale: scale,
                                item: OnboardingData.whatsInside[1],
                              ),
                            ),
                            SizedBox(width: scale.w(AppSpacing.sm)),
                            Expanded(
                              child: WhatsInsideCard(
                                scale: scale,
                                item: OnboardingData.whatsInside[2],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomActionPanel(
            scale: scale,
            buttonLabel: AppStrings.startJourneyAction,
            buttonEnabled: true,
            onPressed: () {},
          ),
        );
      },
    );
  }
}

