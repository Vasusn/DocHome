import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DHBottomRichText extends StatelessWidget {
  const DHBottomRichText({
    super.key,
    required this.mainText,
    required this.subText,
    required this.routeName,
  });

  final String mainText;

  final String subText;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: mainText,
        style: context.theme.displayMedium,
        children: [
          TextSpan(
            text: subText,
            style: context.themeExtension?.displayMediumBlue,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () => Navigator.pushNamed(context, routeName),
          ),
        ],
      ),
    );
  }
}
