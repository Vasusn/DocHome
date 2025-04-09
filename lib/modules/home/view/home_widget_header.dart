import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class HomeWidgetHeader extends StatelessWidget {
  const HomeWidgetHeader({
    super.key,
    this.leftText = AppStrings.categories,
    this.rightText = AppStrings.seeAll,
  });

  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            leftText,
            style: context.themeExtension?.labelMediumBold700MidnightBlue,
          ),
          const Spacer(),
          Text(
            rightText,
            style: context.themeExtension?.displayMediumGrey500Bold500,
          ),
        ],
      ),
    );
  }
}
