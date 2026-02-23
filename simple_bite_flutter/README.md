# Simple Bite Flutter UI

This module contains a reusable, responsive Flutter implementation of the provided **Simple Bite** Figma splash screen.

## Folder structure

```text
lib/
  main.dart
  screens/
    simple_bite_splash_screen.dart
  widgets/
    background/
      dot_pattern_circle.dart
      soft_gradient_background.dart
    branding/
      simple_bite_logo.dart
  utils/
    app_constants.dart
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

- All design values are centralized in `lib/utils/app_constants.dart`.
- Theme tokens are centralized in `lib/theme/*`.
- Reusable widgets can be reused in other screens without duplicating styling.
- Responsive scaling uses the Figma base frame (`400 x 800`) via `ResponsiveScale`.

