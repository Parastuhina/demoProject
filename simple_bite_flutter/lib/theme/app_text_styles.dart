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

  static TextStyle sectionTitle(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        height: 1.15,
      );

  static TextStyle screenSubtitle(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        height: 1.3,
      );

  static TextStyle optionTitle(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        height: 1.2,
      );

  static TextStyle optionSubtitle(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  static TextStyle actionButton(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        height: 1.2,
      );

  static TextStyle bodyStrong(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        height: 1.25,
      );

  static TextStyle bodyMedium(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        height: 1.25,
      );

  static TextStyle bodyRegular(double fontSize) => TextStyle(
        fontFamily: primaryFontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w400,
        height: 1.25,
      );
}

