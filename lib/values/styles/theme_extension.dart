import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.displayMediumGrey,
    required this.displayMediumBlue,
    required this.displayLargeGrey,
    required this.labelMediumBold,
    required this.titleMediumGrey,
    required this.displayMediumSemiBoldWhite,
    required this.labelMediumBlack,
    required this.displayMediumBoldBlack,
    required this.displayLargeSemiBoldBlack,
    required this.labelMediumSemiBoldGrey,
  });

  final TextStyle displayMediumGrey;
  final TextStyle displayMediumBlue;
  final TextStyle displayLargeGrey;
  final TextStyle labelMediumBold;
  final TextStyle titleMediumGrey;
  final TextStyle displayMediumSemiBoldWhite;
  final TextStyle labelMediumBlack;
  final TextStyle displayMediumBoldBlack;
  final TextStyle displayLargeSemiBoldBlack;
  final TextStyle labelMediumSemiBoldGrey;

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    TextStyle? displayMediumGrey,
    TextStyle? displayMediumBlue,
    TextStyle? displayLargeGrey,
    TextStyle? labelMediumBold,
    TextStyle? titleMediumGrey,
    TextStyle? displayMediumSemiBoldWhite,
    TextStyle? labelMediumBlack,
    TextStyle? displayMediumBoldBlack,
    TextStyle? displayLargeSemiBoldBlack,
    TextStyle? labelMediumSemiBoldGrey,
  }) {
    return AppThemeExtension(
      displayMediumGrey: displayMediumGrey ?? this.displayMediumGrey,
      displayMediumBlue: displayMediumGrey ?? this.displayMediumBlue,
      displayLargeGrey: displayLargeGrey ?? this.displayLargeGrey,
      labelMediumBold: labelMediumBold ?? this.labelMediumBold,
      titleMediumGrey: titleMediumGrey ?? this.titleMediumGrey,
      displayMediumSemiBoldWhite:
          displayMediumSemiBoldWhite ?? this.displayMediumSemiBoldWhite,
      labelMediumBlack: labelMediumBlack ?? this.labelMediumBlack,
      displayMediumBoldBlack: displayMediumBoldBlack ?? this.displayMediumBoldBlack,
      displayLargeSemiBoldBlack: displayLargeSemiBoldBlack ?? this.displayLargeSemiBoldBlack,
      labelMediumSemiBoldGrey: labelMediumSemiBoldGrey ?? this.labelMediumSemiBoldGrey,
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) {
      return this;
    }

    return AppThemeExtension(
      displayMediumGrey:
          TextStyle.lerp(displayMediumGrey, other.displayMediumGrey, t)!,
      displayMediumBlue:
          TextStyle.lerp(displayMediumBlue, other.displayMediumBlue, t)!,
      displayLargeGrey:
          TextStyle.lerp(displayLargeGrey, other.displayLargeGrey, t)!,
      labelMediumBold:
          TextStyle.lerp(labelMediumBold, other.labelMediumBold, t)!,
      titleMediumGrey:
          TextStyle.lerp(titleMediumGrey, other.titleMediumGrey, t)!,
      displayMediumSemiBoldWhite:
          TextStyle.lerp(
            displayMediumSemiBoldWhite,
            other.displayMediumSemiBoldWhite,
            t,
          )!,
      labelMediumBlack:
          TextStyle.lerp(labelMediumBlack, other.labelMediumBlack, t)!,
      displayMediumBoldBlack:
          TextStyle.lerp(displayMediumBoldBlack, other.displayMediumBoldBlack, t)!,
      displayLargeSemiBoldBlack:
          TextStyle.lerp(displayLargeSemiBoldBlack, other.displayLargeSemiBoldBlack, t)!,
      labelMediumSemiBoldGrey:
          TextStyle.lerp(labelMediumSemiBoldGrey, other.labelMediumSemiBoldGrey, t)!,
    );
  }
}
