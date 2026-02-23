import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";

class PrimaryActionButton extends StatelessWidget {
  const PrimaryActionButton({
    required this.scale,
    required this.label,
    required this.enabled,
    this.onPressed,
    super.key,
  });

  final ResponsiveScale scale;
  final String label;
  final bool enabled;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonColor = enabled ? AppColors.buttonPrimary : AppColors.buttonDisabled;
    return SizedBox(
      width: double.infinity,
      height: scale.h(OnboardingDimens.continueButtonHeight),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: buttonColor,
          disabledBackgroundColor: AppColors.buttonDisabled,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(scale.w(AppRadii.button)),
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.actionButton(scale.sp(AppFontSize.button)).copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

