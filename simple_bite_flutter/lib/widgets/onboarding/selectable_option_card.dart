import "package:flutter/material.dart";

import "../../theme/app_colors.dart";
import "../../theme/app_text_styles.dart";
import "../../utils/app_constants.dart";
import "../../utils/responsive.dart";

class SelectableOptionCard extends StatelessWidget {
  const SelectableOptionCard({
    required this.scale,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    this.badge,
    this.onTap,
    super.key,
  });

  final ResponsiveScale scale;
  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;
  final String? badge;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final titleColor = selected ? Colors.white : AppColors.heading;
    final subtitleColor = selected ? Colors.white.withOpacity(0.78) : AppColors.subtitle;
    final iconColor = selected ? Colors.white : AppColors.selectionIcon;

    return InkWell(
      borderRadius: BorderRadius.circular(scale.w(AppRadii.card)),
      onTap: onTap,
      child: Container(
        height: scale.h(OnboardingDimens.optionHeight),
        padding: EdgeInsets.symmetric(
          horizontal: scale.w(OnboardingDimens.optionHorizontalPadding),
          vertical: scale.h(OnboardingDimens.optionVerticalPadding),
        ),
        decoration: BoxDecoration(
          color: selected ? AppColors.selectionCardSelected : AppColors.selectionCard,
          borderRadius: BorderRadius.circular(scale.w(AppRadii.card)),
        ),
        child: Row(
          children: [
            Icon(icon, size: scale.sp(OnboardingDimens.optionIconSize), color: iconColor),
            SizedBox(width: scale.w(AppSpacing.sm)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.optionTitle(scale.sp(AppFontSize.optionTitle))
                        .copyWith(color: titleColor),
                  ),
                  if (subtitle.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.only(top: scale.h(AppSpacing.xxs)),
                      child: Text(
                        subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.optionSubtitle(
                          scale.sp(AppFontSize.optionSubtitle),
                        ).copyWith(color: subtitleColor),
                      ),
                    ),
                ],
              ),
            ),
            if (badge != null) ...[
              SizedBox(width: scale.w(AppSpacing.xs)),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: scale.w(AppSpacing.xs),
                  vertical: scale.h(AppSpacing.xxs),
                ),
                decoration: BoxDecoration(
                  color: AppColors.badgeBackground,
                  borderRadius: BorderRadius.circular(scale.w(AppRadii.chip)),
                ),
                child: Text(
                  badge!,
                  style: AppTextStyles.bodyMedium(scale.sp(AppFontSize.tiny))
                      .copyWith(color: AppColors.badgeText),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

