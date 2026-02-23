import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";
import "primary_action_button.dart";

class BottomActionPanel extends StatelessWidget {
  const BottomActionPanel({
    required this.scale,
    required this.buttonLabel,
    required this.buttonEnabled,
    this.onPressed,
    this.progressFraction,
    this.priceText,
    this.priceSuffix,
    super.key,
  });

  final ResponsiveScale scale;
  final String buttonLabel;
  final bool buttonEnabled;
  final VoidCallback? onPressed;
  final double? progressFraction;
  final String? priceText;
  final String? priceSuffix;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppColors.onboardingSurface),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (progressFraction != null)
              SizedBox(
                width: double.infinity,
                height: scale.h(OnboardingDimens.progressBarHeight),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: progressFraction,
                    child: Container(color: AppColors.progressActive),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.only(
                top: scale.h(OnboardingDimens.bottomPanelTopPadding),
                left: scale.w(OnboardingDimens.horizontalPadding),
                right: scale.w(OnboardingDimens.horizontalPadding),
                bottom: scale.h(OnboardingDimens.bottomPanelBottomPadding),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (priceText != null)
                    Padding(
                      padding: EdgeInsets.only(bottom: scale.h(AppSpacing.md)),
                      child: RichText(
                        text: TextSpan(
                          style: AppTextStyles.sectionTitle(
                            scale.sp(AppFontSize.headingLarge),
                          ).copyWith(color: AppColors.heading),
                          children: [
                            TextSpan(text: priceText),
                            if (priceSuffix != null)
                              TextSpan(
                                text: " $priceSuffix",
                                style: AppTextStyles.sectionTitle(
                                  scale.sp(AppFontSize.sectionTitle),
                                ).copyWith(color: AppColors.heading),
                              ),
                          ],
                        ),
                      ),
                    ),
                  PrimaryActionButton(
                    scale: scale,
                    label: buttonLabel,
                    enabled: buttonEnabled,
                    onPressed: onPressed,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

