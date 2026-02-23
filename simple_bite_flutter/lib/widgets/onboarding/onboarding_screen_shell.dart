import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";
import "../common/bottom_action_panel.dart";
import "onboarding_top_bar.dart";

class OnboardingScreenShell extends StatelessWidget {
  const OnboardingScreenShell({
    required this.title,
    required this.subtitle,
    required this.body,
    required this.continueEnabled,
    required this.onContinue,
    this.onBack,
    this.progressFraction = OnboardingDimens.progressBarFraction,
    this.showBack = true,
    this.buttonLabel = AppStrings.continueAction,
    super.key,
  });

  final String title;
  final String subtitle;
  final Widget body;
  final bool continueEnabled;
  final VoidCallback? onContinue;
  final VoidCallback? onBack;
  final double progressFraction;
  final bool showBack;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final scale = ResponsiveScale(constraints.biggest);

        return Scaffold(
          backgroundColor: AppColors.onboardingScaffold,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: scale.w(OnboardingDimens.horizontalPadding),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: scale.h(OnboardingDimens.topHeaderGap)),
                  OnboardingTopBar(
                    scale: scale,
                    title: title,
                    showBack: showBack,
                    onBack: onBack,
                  ),
                  SizedBox(height: scale.h(OnboardingDimens.subtitleTopSpacing)),
                  Center(
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.screenSubtitle(scale.sp(AppFontSize.subtitle))
                          .copyWith(color: AppColors.subtitle),
                    ),
                  ),
                  SizedBox(height: scale.h(OnboardingDimens.optionsTopSpacing)),
                  Expanded(child: body),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomActionPanel(
            scale: scale,
            progressFraction: progressFraction,
            buttonLabel: buttonLabel,
            buttonEnabled: continueEnabled,
            onPressed: onContinue,
          ),
        );
      },
    );
  }
}

