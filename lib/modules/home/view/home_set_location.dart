import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeSetLocation extends StatelessWidget {
  const HomeSetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.location, style: context.theme.displayMedium),
              4.height,
              Row(
                children: [
                  SvgPicture.asset(AppIconStrings.homeSetLocationIcon),
                  8.width,
                  Text(
                    AppStrings.selectedLocation,
                    style: context.themeExtension?.displayMediumGrey700Bold600,
                  ),
                  8.width,
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColorStrings.grey700Color,
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: AppColorStrings.grey100Color,
            radius: 20,
            child: Badge(
              child: SvgPicture.asset(AppIconStrings.homeNotificationBingIcon),
            ),
          ),
        ],
      ),
    );
  }
}
