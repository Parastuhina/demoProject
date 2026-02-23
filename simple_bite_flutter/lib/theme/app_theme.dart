import "package:flutter/material.dart";

import "app_colors.dart";
import "app_text_styles.dart";
import "../utils/app_constants.dart";

class AppTheme {
  const AppTheme._();

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.iconGreen,
          brightness: Brightness.light,
          surface: AppColors.scaffoldBackground,
        ),
        textTheme: TextTheme(
          headlineMedium: AppTextStyles.wordmark(AppConstants.wordmarkFontSize)
              .copyWith(color: AppColors.wordmarkDark),
          bodySmall: AppTextStyles.tagline(AppConstants.taglineFontSize)
              .copyWith(color: AppColors.tagline),
        ),
      );
}

