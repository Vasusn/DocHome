import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/image_string.dart';
import 'package:flutter/material.dart';

class AppLogoWithAppName extends StatelessWidget {
  const AppLogoWithAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImagesStings.appIcon, height: 66),
        12.height,
        RichText(
          text: TextSpan(
            text: AppStrings.appName1,
            style: context.themeExtension?.displayLargeGrey,
            children: [
              TextSpan(
                text: AppStrings.appName2,
                style: context.theme.displayLarge,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
