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
                child: Column(
                  children: [
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.userEditIcon,
                      title: AppStrings.editProfile,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                      onTap: () => Navigator.pushNamed(context, '/editProfileScreen'),
                    ),
                    Divider(),
                    DHProfileListTile(
                      leadingIcon: AppIconStrings.notificationIcon,
                      title: AppStrings.notifications,
                      trailingIcon: AppIconStrings.arrowRightIcon,
                      onTap: () => Navigator.pushNamed(context, '/notificationScreen'),
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
                      onTap:() => showLogoutBottomSheet(context),
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
    this.onTap,
  });

  final String leadingIcon;
  final String? trailingIcon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      onTap: onTap,
      visualDensity: VisualDensity.compact,
      leading: SvgPicture.asset(leadingIcon, height: 24, width: 24),
      title: Text(title, style: context.themeExtension?.titleMediumGrey),
      trailing: SvgPicture.asset(trailingIcon ?? '', height: 14, width: 14),
    );
  }
}

void showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
     isDismissible: false,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Logout",
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
              "Are you sure you want to log out?",
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
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Cancel",
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
                      padding: EdgeInsets.symmetric(vertical: 14),
                    ),
                    child: Text(
                      "Yes, Logout",
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
