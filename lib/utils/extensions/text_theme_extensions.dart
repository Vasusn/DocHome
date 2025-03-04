import 'package:dochome/values/styles/theme_extension.dart';
import 'package:flutter/material.dart';

extension TextThemeExtensions on BuildContext {
  TextTheme get theme => TextTheme.of(this);

  AppThemeExtension? get themeExtension =>
      Theme.of(this).extension<AppThemeExtension>();
}
