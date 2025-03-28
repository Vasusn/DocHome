import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_strings.dart';
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
              const CircleAvatar(
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
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            '/editProfileScreen',
                          ),
                    ),
                    const Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.notificationIcon,
                      title: AppStrings.notifications,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                      onTap:
                          () => Navigator.pushNamed(
                            context,
                            '/notificationScreen',
                          ),
                    ),
                    const Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.settingIcon,
                      title: AppStrings.settings,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    const Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.messageQuestionIcon,
                      title: AppStrings.helpSupport,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    const Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.securitySafeIcon,
                      title: AppStrings.termsConditions,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    const Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.logoutIcon,
                      title: AppStrings.logout,
                      // onTap: () => showLogoutBottomSheet(context),
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
  DHProfileListTile({
    super.key,
    this.onTap,
    required this.leadingIcon,
    required this.title,
    this.trailingIcon,
  });

  final String title;
  final VoidCallback? onTap;
  final String leadingIcon;
  final String? trailingIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: SvgPicture.asset(leadingIcon, height: 24, width: 24),
        title: Text(title, style: context.themeExtension?.titleMediumGrey),
        trailing: SvgPicture.asset(trailingIcon ?? '', height: 14, width: 14),
      ),
    );
  }
}
