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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                  padding: EdgeInsets.zero,
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
                    const DHProfileListTile(
                      leadingIcon: AppIconStrings.settingIcon,
                      title: AppStrings.settings,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    const Divider(),
                    const DHProfileListTile(
                      leadingIcon: AppIconStrings.messageQuestionIcon,
                      title: AppStrings.helpSupport,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    const Divider(),
                    const DHProfileListTile(
                      leadingIcon: AppIconStrings.securitySafeIcon,
                      title: AppStrings.termsConditions,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                    ),
                    const Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.logoutIcon,
                      title: AppStrings.logout,
                      onTap: () => showLogoutBottomSheet(context),
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

void showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    isDismissible: false,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 12),
            Divider(color: Colors.grey.shade300, thickness: 1),
            const SizedBox(height: 12),
            Text(
              'Are you sure you want to log out?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      // Add logout functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: const Text(
                      'Yes, Logout',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class DHProfileListTile extends StatelessWidget {
  const DHProfileListTile({
    required this.leadingIcon,
    required this.title,
    super.key,
    this.onTap,
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
