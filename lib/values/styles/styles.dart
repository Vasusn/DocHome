import 'package:dochome/values/strings/color_string.dart';
import 'package:flutter/material.dart';

final class AppStyles {
  static const TextStyle titleMedium = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.5,
  );
  static TextStyle titleMediumGrey = titleMedium.copyWith(
    color: AppColorStrings.textGreyColor,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    height: 1.5,
    color: AppColorStrings.textGreyColor,
  );
  static TextStyle displayMediumGrey = displayMedium.copyWith(
    color: AppColorStrings.greyColor,
  );
  static TextStyle displayMediumBlue = displayMedium.copyWith(
    color: AppColorStrings.blueTextColor,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle labelMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    height: 1.5,
    color: AppColorStrings.whiteColor,
  );
  static TextStyle labelMediumBold = labelMedium.copyWith(
    color: AppColorStrings.blackColor,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle displayLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.5,
  );
  static TextStyle displayLargeGrey = displayLarge.copyWith(
    color: AppColorStrings.textGreyColor,
  );
  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: AppColorStrings.midnightBlueColor,
          padding: const EdgeInsets.symmetric(vertical: 10),
        ),
      );
}
