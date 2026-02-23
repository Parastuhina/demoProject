import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";
import "../../widgets/common/bottom_action_panel.dart";
import "../../widgets/common/outlined_placeholder_field.dart";
import "../../widgets/onboarding/onboarding_top_bar.dart";
import "payment_done_screen.dart";

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

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
                    title: AppStrings.paymentMethodTitle,
                  ),
                  SizedBox(height: scale.h(OnboardingDimens.subtitleTopSpacing)),
                  Center(
                    child: Text(
                      AppStrings.paymentMethodSubtitle,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.screenSubtitle(scale.sp(AppFontSize.subtitle))
                          .copyWith(color: AppColors.subtitle),
                    ),
                  ),
                  SizedBox(height: scale.h(OnboardingDimens.paymentIllustrationTopSpacing)),
                  _PaymentCardIllustration(scale: scale),
                  SizedBox(height: scale.h(OnboardingDimens.paymentFieldsTopSpacing)),
                  OutlinedPlaceholderField(
                    scale: scale,
                    label: AppStrings.paymentNameOnCard,
                  ),
                  SizedBox(height: scale.h(OnboardingDimens.paymentFieldGap)),
                  OutlinedPlaceholderField(
                    scale: scale,
                    label: AppStrings.paymentCardNumber,
                  ),
                  SizedBox(height: scale.h(OnboardingDimens.paymentFieldGap)),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedPlaceholderField(
                          scale: scale,
                          label: AppStrings.paymentExpiryDate,
                        ),
                      ),
                      SizedBox(width: scale.w(OnboardingDimens.paymentDoubleFieldGap)),
                      Expanded(
                        child: OutlinedPlaceholderField(
                          scale: scale,
                          label: AppStrings.paymentCvv,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomActionPanel(
            scale: scale,
            buttonLabel: AppStrings.continueAction,
            buttonEnabled: true,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const PaymentDoneScreen()),
              );
            },
            priceText: AppStrings.paymentPrice,
            priceSuffix: AppStrings.paymentPerMonth,
          ),
        );
      },
    );
  }
}

class _PaymentCardIllustration extends StatelessWidget {
  const _PaymentCardIllustration({
    required this.scale,
  });

  final ResponsiveScale scale;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: scale.w(OnboardingDimens.paymentIllustrationSize),
        height: scale.w(OnboardingDimens.paymentIllustrationSize),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: OnboardingDimens.paymentCardRotation,
              child: Container(
                width: scale.w(
                  OnboardingDimens.paymentIllustrationSize *
                      OnboardingDimens.paymentCardWidthFactor,
                ),
                height: scale.w(
                  OnboardingDimens.paymentIllustrationSize *
                      OnboardingDimens.paymentCardHeightFactor,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(scale.w(AppRadii.card)),
                  border: Border.all(color: AppColors.inputBorder),
                ),
                child: Icon(
                  Icons.credit_card_rounded,
                  color: AppColors.subtitle,
                  size: scale.sp(OnboardingDimens.paymentCardIconSize),
                ),
              ),
            ),
            Positioned(
              right: scale.w(OnboardingDimens.paymentPlusRight),
              bottom: scale.h(OnboardingDimens.paymentPlusBottom),
              child: Container(
                width: scale.w(OnboardingDimens.paymentPlusBubbleSize),
                height: scale.w(OnboardingDimens.paymentPlusBubbleSize),
                decoration: const BoxDecoration(
                  color: AppColors.buttonPrimary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: scale.sp(OnboardingDimens.paymentPlusIconSize),
                ),
              ),
            ),
            Positioned(
              top: scale.h(OnboardingDimens.paymentDecorTopA),
              left: scale.w(OnboardingDimens.paymentDecorLeftA),
              child: Icon(
                Icons.star,
                size: scale.sp(OnboardingDimens.paymentDecorIcon),
              ),
            ),
            Positioned(
              top: scale.h(OnboardingDimens.paymentDecorTopB),
              right: scale.w(OnboardingDimens.paymentDecorRightB),
              child: Icon(
                Icons.music_note,
                size: scale.sp(OnboardingDimens.paymentDecorIcon),
              ),
            ),
            Positioned(
              left: scale.w(OnboardingDimens.paymentDecorLeftC),
              bottom: scale.h(OnboardingDimens.paymentDecorBottomC),
              child: Icon(
                Icons.circle,
                size: scale.sp(OnboardingDimens.paymentDecorDotIcon),
              ),
            ),
            Positioned(
              right: scale.w(OnboardingDimens.paymentDecorRightD),
              top: scale.h(OnboardingDimens.paymentDecorTopD),
              child: Icon(
                Icons.circle,
                size: scale.sp(OnboardingDimens.paymentDecorDotIcon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

