import 'package:dochome/screens/welcome_screen/widgets/welcome_screen_builder.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/image_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenBuilder(
        headerImage: AppImagesStings.welcomeScreen3,
        headerText: AppStrings.welcomeScreen3HeaderText,
        subText: AppStrings.welcomeScreen3SubText,
      ),
    );
  }
}
