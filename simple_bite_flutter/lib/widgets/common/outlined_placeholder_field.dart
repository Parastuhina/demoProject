import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";

class OutlinedPlaceholderField extends StatelessWidget {
  const OutlinedPlaceholderField({
    required this.scale,
    required this.label,
    this.width,
    super.key,
  });

  final ResponsiveScale scale;
  final String label;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: scale.h(OnboardingDimens.paymentFieldHeight),
      padding: EdgeInsets.symmetric(horizontal: scale.w(AppSpacing.md)),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(scale.w(AppRadii.largeCard)),
        border: Border.all(
          width: AppStroke.thin,
          color: AppColors.inputBorder,
        ),
      ),
      child: Text(
        label,
        style: AppTextStyles.bodyRegular(scale.sp(AppFontSize.body))
            .copyWith(color: AppColors.mutedText),
      ),
    );
  }
}

