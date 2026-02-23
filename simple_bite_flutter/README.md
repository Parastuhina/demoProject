# Simple Bite Flutter UI

This module contains a reusable, responsive Flutter implementation of the provided **Simple Bite** onboarding and payment flow screens.

## Implemented screens

1. Activity Level (selected + unselected state via tap toggle)
2. Cooking Time (selected + unselected state via tap toggle)
3. Meal Frequency (selected + unselected state via tap toggle)
4. Payment Method
5. Payment Done
6. Building Your Meal Plan
7. Congratulations (simple)
8. Congratulations summary (daily targets + what's inside)

## Folder structure

```text
lib/
  main.dart
  screens/
    onboarding/
      activity_level_screen.dart
      cooking_time_screen.dart
      meal_frequency_screen.dart
    payment/
      payment_method_screen.dart
      payment_done_screen.dart
    plan/
      meal_plan_building_screen.dart
      congratulations_simple_screen.dart
      congratulations_summary_screen.dart
    simple_bite_splash_screen.dart
  widgets/
    common/
      bottom_action_panel.dart
      center_message_panel.dart
      outlined_placeholder_field.dart
      primary_action_button.dart
    onboarding/
      onboarding_screen_shell.dart
      onboarding_top_bar.dart
      selectable_option_card.dart
      meal_plan_progress.dart
      target_card.dart
      whats_inside_card.dart
    background/
      dot_pattern_circle.dart
      soft_gradient_background.dart
    branding/
      simple_bite_logo.dart
  utils/
    app_constants.dart
    onboarding_data.dart
    onboarding_models.dart
    responsive.dart
  theme/
    app_colors.dart
    app_text_styles.dart
    app_theme.dart
```

## Run locally

```bash
flutter pub get
flutter run
```

## Integration notes

- All sizing/spacing/typography values are centralized in `lib/utils/app_constants.dart`.
- Theme tokens are centralized in `lib/theme/*`.
- Reusable widgets are split by concern (`common/` and `onboarding/`).
- Responsive scaling uses the Figma base frame (`400 x 800`) through `ResponsiveScale`.

