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
    required this.displayMediumGrey700Bold600,
    required this.displayMediumGrey600Bold700,
    required this.displayMediumGrey500Bold500,
    required this.labelMediumBold700MidnightBlue,
    required this.labelSmallBold700grey600,
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
  final TextStyle displayMediumGrey700Bold600;
  final TextStyle displayMediumGrey600Bold700;
  final TextStyle displayMediumGrey500Bold500;
  final TextStyle labelMediumBold700MidnightBlue;
  final TextStyle labelSmallBold700grey600;

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
    TextStyle? displayMediumGrey700Bold600,
    TextStyle? displayMediumGrey600Bold700,
    TextStyle? displayMediumGrey500Bold500,
    TextStyle? labelMediumBold700MidnightBlue,
    TextStyle? labelSmallBold700grey600,
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
      displayMediumBoldBlack:
          displayMediumBoldBlack ?? this.displayMediumBoldBlack,
      displayLargeSemiBoldBlack:
          displayLargeSemiBoldBlack ?? this.displayLargeSemiBoldBlack,
      labelMediumSemiBoldGrey:
          labelMediumSemiBoldGrey ?? this.labelMediumSemiBoldGrey,
      displayMediumGrey700Bold600:
          displayMediumGrey700Bold600 ?? this.displayMediumGrey700Bold600,
      displayMediumGrey600Bold700:
          displayMediumGrey600Bold700 ?? this.displayMediumGrey600Bold700,
      displayMediumGrey500Bold500:
          displayMediumGrey500Bold500 ?? this.displayMediumGrey500Bold500,
      labelMediumBold700MidnightBlue:
          labelMediumBold700MidnightBlue ?? this.labelMediumBold700MidnightBlue,
      labelSmallBold700grey600:
          labelSmallBold700grey600 ?? this.labelSmallBold700grey600,
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
          TextStyle.lerp(labelMediumBold, other.labelMediumBold, t)!,
      displayMediumSemiBoldWhite:
          TextStyle.lerp(
            displayMediumSemiBoldWhite,
            other.displayMediumSemiBoldWhite,
            t,
          )!,
      labelMediumBlack:
          TextStyle.lerp(labelMediumBlack, other.labelMediumBlack, t)!,
      displayMediumBoldBlack:
          TextStyle.lerp(
            displayMediumBoldBlack,
            other.displayMediumBoldBlack,
            t,
          )!,
      displayLargeSemiBoldBlack:
          TextStyle.lerp(
            displayLargeSemiBoldBlack,
            other.displayLargeSemiBoldBlack,
            t,
          )!,
      labelMediumSemiBoldGrey:
          TextStyle.lerp(
            labelMediumSemiBoldGrey,
            other.labelMediumSemiBoldGrey,
            t,
          )!,
      displayMediumGrey700Bold600:
          TextStyle.lerp(
            displayMediumGrey700Bold600,
            other.displayMediumGrey700Bold600,
            t,
          )!,
      displayMediumGrey600Bold700:
          TextStyle.lerp(
            displayMediumGrey600Bold700,
            other.displayMediumGrey600Bold700,
            t,
          )!,
      displayMediumGrey500Bold500:
          TextStyle.lerp(
            displayMediumGrey500Bold500,
            other.displayMediumGrey500Bold500,
            t,
          )!,
      labelMediumBold700MidnightBlue:
          TextStyle.lerp(
            labelMediumBold700MidnightBlue,
            other.labelMediumBold700MidnightBlue,
            t,
          )!,
      labelSmallBold700grey600:
          TextStyle.lerp(
            labelSmallBold700grey600,
            other.labelSmallBold700grey600,
            t,
          )!,
    );
  }
}
