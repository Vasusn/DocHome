import 'package:flutter/material.dart';

class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  const AppThemeExtension({
    required this.displayMediumGrey,
    required this.displayMediumBlue,
    required this.displayLargeGrey,
    required this.labelMediumBold,
    required this.titleMediumGrey,
  });

  final TextStyle displayMediumGrey;
  final TextStyle displayMediumBlue;
  final TextStyle displayLargeGrey;
  final TextStyle labelMediumBold;
  final TextStyle titleMediumGrey;

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    TextStyle? displayMediumGrey,
    TextStyle? displayMediumBlue,
    TextStyle? displayLargeGrey,
    TextStyle? labelMediumBold,
    TextStyle? titleMediumGrey,
  }) {
    return AppThemeExtension(
      displayMediumGrey: displayMediumGrey ?? this.displayMediumGrey,
      displayMediumBlue: displayMediumGrey ?? this.displayMediumBlue,
      displayLargeGrey: displayLargeGrey ?? this.displayLargeGrey,
      labelMediumBold: labelMediumBold ?? this.labelMediumBold,
      titleMediumGrey: titleMediumGrey ?? this.titleMediumGrey,
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
          TextStyle.lerp(labelMediumBold, other.labelMediumBold, t)!, titleMediumGrey:
          TextStyle.lerp(titleMediumGrey, other.titleMediumGrey, t)!,
    );
  }
}
