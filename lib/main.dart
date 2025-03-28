import 'package:dochome/routes.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: AppThemes.lightThemeData(),
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRouteStrings.welcomeScreen,
    );
  }
}
