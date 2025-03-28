import 'package:dochome/utils/extensions/mediaquery_extension.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:flutter/material.dart';

class WelcomeScreenBuilder extends StatelessWidget {
  const WelcomeScreenBuilder({
    super.key,
    required this.headerImage,
    required this.headerText,
    required this.subText,
  });

  final String headerImage;
  final String headerText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          headerImage,
          height: context.height * 0.62,
          fit: BoxFit.cover,
        ),
        28.height,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              Text(headerText, style: context.theme.titleMedium),
              8.height,
              Text(
                subText,
                style: context.theme.displayMedium,
                textAlign: TextAlign.center,
              ),
              36.height,
            ],
          ),
        ),
      ],
    );
  }
}
