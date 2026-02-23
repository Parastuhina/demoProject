import "package:flutter/material.dart";

import "../utils/app_constants.dart";

class AppTextStyles {
  const AppTextStyles._();

  static const String primaryFontFamily = "Inter";

  static TextStyle wordmark(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        height: AppConstants.wordmarkLineHeight,
      );

  static TextStyle tagline(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        height: AppConstants.taglineLineHeight,
        letterSpacing: AppConstants.taglineLetterSpacing,
      );
}

