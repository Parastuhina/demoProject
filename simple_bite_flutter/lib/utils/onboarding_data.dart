import "package:flutter/material.dart";

import "../theme/app_colors.dart";
import "app_constants.dart";
import "onboarding_models.dart";

class OnboardingData {
  const OnboardingData._();

  static const List<SelectionOptionItem> activityLevels = [
    SelectionOptionItem(
      title: AppStrings.activitySedentaryTitle,
      subtitle: AppStrings.activitySedentarySubtitle,
      icon: Icons.person_outline_rounded,
    ),
    SelectionOptionItem(
      title: AppStrings.activityLightTitle,
      subtitle: AppStrings.activityLightSubtitle,
      icon: Icons.trending_up_rounded,
    ),
    SelectionOptionItem(
      title: AppStrings.activityModerateTitle,
      subtitle: AppStrings.activityModerateSubtitle,
      icon: Icons.local_fire_department_outlined,
    ),
    SelectionOptionItem(
      title: AppStrings.activityVeryTitle,
      subtitle: AppStrings.activityVerySubtitle,
      icon: Icons.bolt_outlined,
    ),
    SelectionOptionItem(
      title: AppStrings.activityAthleteTitle,
      subtitle: AppStrings.activityAthleteSubtitle,
      icon: Icons.workspace_premium_outlined,
    ),
  ];

  static const List<SelectionOptionItem> cookingTimes = [
    SelectionOptionItem(
      title: AppStrings.cookingFastTitle,
      subtitle: "",
      icon: Icons.bolt_outlined,
    ),
    SelectionOptionItem(
      title: AppStrings.cookingMediumTitle,
      subtitle: "",
      icon: Icons.local_fire_department_outlined,
    ),
    SelectionOptionItem(
      title: AppStrings.cookingLongTitle,
      subtitle: "",
      icon: Icons.trending_up_rounded,
    ),
    SelectionOptionItem(
      title: AppStrings.cookingExtendedTitle,
      subtitle: "",
      icon: Icons.access_time_rounded,
    ),
  ];

  static const List<SelectionOptionItem> mealFrequencies = [
    SelectionOptionItem(
      title: AppStrings.meal2Title,
      subtitle: AppStrings.meal2Subtitle,
      icon: Icons.panorama_fish_eye_rounded,
    ),
    SelectionOptionItem(
      title: AppStrings.meal3Title,
      subtitle: AppStrings.meal3Subtitle,
      icon: Icons.link_rounded,
    ),
    SelectionOptionItem(
      title: AppStrings.mealSnacksTitle,
      subtitle: AppStrings.mealSnacksSubtitle,
      icon: Icons.restaurant_menu_rounded,
      badge: AppStrings.mealPopularBadge,
    ),
    SelectionOptionItem(
      title: AppStrings.mealUnsureTitle,
      subtitle: AppStrings.mealUnsureSubtitle,
      icon: Icons.help_outline_rounded,
    ),
  ];

  static const List<String> buildSteps = [
    AppStrings.buildStepAnalyzingA,
    AppStrings.buildStepAnalyzingB,
    AppStrings.buildStepSelecting,
    AppStrings.buildStepBalancing,
    AppStrings.buildStepFinalizing,
  ];

  static final List<MacroTargetItem> targets = [
    const MacroTargetItem(
      title: AppStrings.targetCalories,
      value: "1770",
      icon: Icons.local_fire_department_rounded,
      progress: 0.66,
      progressColor: AppColors.targetCalories,
      iconBackground: Color(0xFFFFF5DF),
    ),
    const MacroTargetItem(
      title: AppStrings.targetProtein,
      value: "165g",
      icon: Icons.ramen_dining_rounded,
      progress: 0.52,
      progressColor: AppColors.targetProtein,
      iconBackground: Color(0xFFFFF0F0),
    ),
    const MacroTargetItem(
      title: AppStrings.targetCarbs,
      value: "167g",
      icon: Icons.grain_rounded,
      progress: 0.50,
      progressColor: AppColors.targetCarbs,
      iconBackground: Color(0xFFFFF7E2),
    ),
    const MacroTargetItem(
      title: AppStrings.targetFats,
      value: "49g",
      icon: Icons.water_drop_rounded,
      progress: 0.54,
      progressColor: AppColors.targetFats,
      iconBackground: Color(0xFFEEF3FF),
    ),
  ];

  static const List<WhatsInsideItem> whatsInside = [
    WhatsInsideItem(
      title: AppStrings.insideDailyMealsTitle,
      subtitle: AppStrings.insideDailyMealsSubtitle,
      icon: Icons.restaurant_rounded,
      iconBackground: Color(0xFF111111),
    ),
    WhatsInsideItem(
      title: AppStrings.insideGroceryTitle,
      subtitle: AppStrings.insideGrocerySubtitle,
      icon: Icons.receipt_long_rounded,
      iconBackground: AppColors.buttonPrimary,
    ),
    WhatsInsideItem(
      title: AppStrings.insideProgressTitle,
      subtitle: AppStrings.insideProgressSubtitle,
      icon: Icons.show_chart_rounded,
      iconBackground: AppColors.targetFats,
    ),
  ];
}

