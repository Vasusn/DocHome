import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/styles/styles.dart';
import 'package:dochome/values/styles/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppThemes {
  static ThemeData lightThemeData() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: AppColorStrings.greyColor),
      useMaterial3: true,
      fontFamily: GoogleFonts.inter().fontFamily,
      scaffoldBackgroundColor: AppColorStrings.whiteColor,
      textTheme: const TextTheme(
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
          displayMediumSemiBoldWhite: AppStyles.displayMediumSemiBoldWhite,
          labelMediumBlack: AppStyles.labelMediumBlack,
          displayMediumBoldBlack: AppStyles.displayMediumBoldBlack,
          displayLargeSemiBoldBlack: AppStyles.displayLargeSemiBoldBlack,
          labelMediumSemiBoldGrey: AppStyles.labelMediumSemiBoldGrey,
        ),
      ],
      elevatedButtonTheme: AppStyles.elevatedButtonThemeData,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColorStrings.lightGrey200Color),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}
