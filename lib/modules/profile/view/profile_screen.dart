import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Text(AppStrings.profile, style: context.theme.displayLarge),
              32.height,
              CircleAvatar(
                radius: 84,
                backgroundColor: AppColorStrings.greyColor,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: AppColorStrings.whiteColor,
                ),
              ),
              16.height,
              Text(
                AppStrings.userName,
                style: context.themeExtension?.labelMediumBold,
              ),
              4.height,
              Text(AppStrings.userPhone, style: context.theme.displayMedium),
              16.height,
              Expanded(
                child: ListView(
                  children: [
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.userEditIcon,
                      title: AppStrings.editProfile,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.notificationIcon,
                      title: AppStrings.notifications,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.settingIcon,
                      title: AppStrings.settings,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.messageQuestionIcon,
                      title: AppStrings.helpSupport,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.securitySafeIcon,
                      title: AppStrings.termsConditions,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.logoutIcon,
                      title: AppStrings.logout,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DHProfileListTile extends StatelessWidget {
  const DHProfileListTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.trailingIcon,
  });

  final String leadingIcon;
  final String? trailingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(leadingIcon, height: 24, width: 24),
      title: Text(title, style: context.themeExtension?.titleMediumGrey),
      trailing: SvgPicture.asset(trailingIcon ?? '', height: 14, width: 14),
    );
  }
}
