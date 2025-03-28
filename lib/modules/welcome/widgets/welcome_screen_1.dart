import 'package:dochome/modules/welcome/widgets/welcome_screen_builder.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:dochome/values/strings/image_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeScreenBuilder(
        headerImage: AppImagesStings.welcomeScreen1,
        headerText: AppStrings.welcomeScreen1HeaderText,
        subText: AppStrings.welcomeScreen1SubText,
      ),
    );
  }
}
