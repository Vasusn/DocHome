import 'package:dochome/modules/welcome/widgets/welcome_screen_builder.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/image_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreenBuilder(
        headerImage: AppImagesStings.welcomeScreen2,
        headerText: AppStrings.welcomeScreen2HeaderText,
        subText: AppStrings.welcomeScreen2SubText,
      ),
    );
  }
}
