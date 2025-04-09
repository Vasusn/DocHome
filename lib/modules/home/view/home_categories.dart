import 'package:dochome/modules/home/values/home_screen_lists.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/styles/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    const categoryNames = HomeScreenLists.categoryNames;
    const categoryIcons = HomeScreenLists.categoryIcons;
    final themeExtension = context.themeExtension;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _buildCategoryRow(
            themeExtension,
            categoryIcons.sublist(0, 4),
            categoryNames.sublist(0, 4),
          ),
          12.height,
          _buildCategoryRow(
            themeExtension,
            categoryIcons.sublist(4, 8),
            categoryNames.sublist(4, 8),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryRow(
    AppThemeExtension? themeExtension,
    List<String> icons,
    List<String> names,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) {
        return SizedBox(
          width: 62,
          child: Column(
            children: [
              SvgPicture.asset(icons[index], fit: BoxFit.cover),
              4.height,
              Text(
                names[index],
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: themeExtension?.labelSmallBold700grey600,
              ),
            ],
          ),
        );
      }),
    );
  }
}
