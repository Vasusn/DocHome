import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/styles/styles.dart';
import 'package:dochome/values/styles/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppThemes {
  static ThemeData lightThemeData() {
    return ThemeData(
      fontFamily: GoogleFonts.inter().fontFamily,
      scaffoldBackgroundColor: AppColorStrings.whiteColor,
      textTheme: TextTheme(
        titleMedium: AppStyles.titleMedium,
        displayMedium: AppStyles.displayMedium,
        labelMedium: AppStyles.labelMedium,
        displayLarge: AppStyles.displayLarge,
      ),
      extensions: [
        AppThemeExtension(
          displayMediumGrey: AppStyles.displayMediumGrey,
          displayMediumBlue: AppStyles.displayMediumBlue,
          displayLargeGrey: AppStyles.displayLargeGrey,
          labelMediumBold: AppStyles.labelMediumBold,
          titleMediumGrey: AppStyles.titleMediumGrey,
        ),
      ],
      elevatedButtonTheme: AppStyles.elevatedButtonThemeData,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: AppColorStrings.lightGrey200Color),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}
