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
    color: AppColorStrings.grey500Color,
    fontWeight: FontWeight.normal,
  );
  static const TextStyle displayMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0,
    height: 1.5,
    color: AppColorStrings.grey500Color,
  );
  static TextStyle displayMediumGrey = displayMedium.copyWith(
    color: AppColorStrings.greyColor,
  );
  static TextStyle displayMediumGrey700Bold600 = displayMedium.copyWith(
    color: AppColorStrings.grey700Color,
    fontWeight: FontWeight.w600,
    fontFamily: 'inter',
  );
  static TextStyle displayMediumGrey600Bold700 = displayMedium.copyWith(
    color: AppColorStrings.grey600Color,
    fontWeight: FontWeight.w700,
    fontFamily: 'inter',
  );
  static TextStyle displayMediumGrey500Bold500 = displayMedium.copyWith(
    color: AppColorStrings.grey500Color,
    fontWeight: FontWeight.w500,
    fontFamily: 'inter',
  );
  static TextStyle displayMediumSemiBoldWhite = displayMedium.copyWith(
    color: AppColorStrings.whiteColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle displayMediumBoldBlack = displayMedium.copyWith(
    color: AppColorStrings.blackColor,
    fontWeight: FontWeight.bold,
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
  static TextStyle labelMediumBold700MidnightBlue = labelMedium.copyWith(
    color: AppColorStrings.midnightBlueColor,
    fontWeight: FontWeight.w700,
    fontFamily: 'inter',
  );
  static TextStyle labelMediumBlack = labelMedium.copyWith(
    color: AppColorStrings.blackColor,
  );
  static TextStyle labelMediumSemiBoldGrey = labelMedium.copyWith(
    color: AppColorStrings.grey500Color,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle labelSmallBold700grey600 = TextStyle(
    fontFamily: 'inter',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColorStrings.grey600Color,
    letterSpacing: 0,
    height: 1.5,
  );
  static const TextStyle displayLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.5,
  );
  static TextStyle displayLargeGrey = displayLarge.copyWith(
    color: AppColorStrings.grey500Color,
  );
  static TextStyle displayLargeSemiBoldBlack = displayLarge.copyWith(
    color: AppColorStrings.blackColor,
    fontWeight: FontWeight.w600,
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
