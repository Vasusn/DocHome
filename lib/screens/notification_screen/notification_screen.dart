import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.notificationAppbarText,
          style: context.theme.displayLarge,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColorStrings.grey600Color,
              ),
              child: Text(
                '1 New',
                style: context.themeExtension?.displayMediumSemiBoldWhite,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            RowWithDayAndMarkAllRead(dayName: AppStrings.today),
            DHNotificationCard(
              icon: AppIconStrings.calendarTickIcon,
              backgroundColor: AppColorStrings.lightGreenColor,
              headerText: AppStrings.appointmentSuccess,
              subText: AppStrings.successfulText,
              totalTime: '1h',
            ),
            DHNotificationCard(
              icon: AppIconStrings.calendarRemoveIcon,
              backgroundColor: AppColorStrings.lightRedColor,
              headerText: AppStrings.appointmentCancelled,
              subText: AppStrings.cancelledText,
              totalTime: '2h',
            ),
            DHNotificationCard(
              icon: AppIconStrings.calendarEditIcon,
              backgroundColor: AppColorStrings.lightGreyColor,
              headerText: AppStrings.scheduledChanged,
              subText: AppStrings.scheduledText,
              totalTime: '8h',
            ),
            32.height,
            RowWithDayAndMarkAllRead(dayName: AppStrings.yesterday),
            DHNotificationCard(
              icon: AppIconStrings.calendarTickIcon,
              backgroundColor: AppColorStrings.lightGreenColor,
              headerText: AppStrings.appointmentSuccess,
              subText: AppStrings.successfulText,
              totalTime: '1h',
            ),
          ],
        ),
      ),
    );
  }
}

class DHNotificationCard extends StatelessWidget {
  const DHNotificationCard({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.headerText,
    required this.subText,
    required this.totalTime,
  });

  final String icon;
  final Color backgroundColor;
  final String headerText;
  final String subText;
  final String totalTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: backgroundColor,
            child: SvgPicture.asset(icon),
          ),
          16.width,
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      headerText,
                      style: context.themeExtension?.labelMediumBold,
                    ),
                    Text(totalTime, style: context.theme.displayMedium),
                  ],
                ),
                Text(subText, style: context.theme.displayMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RowWithDayAndMarkAllRead extends StatelessWidget {
  const RowWithDayAndMarkAllRead({super.key, required this.dayName});

  final String dayName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(dayName, style: context.themeExtension?.labelMediumBlack),
        Text(
          AppStrings.markAllAsRead,
          style: context.themeExtension?.displayMediumBoldBlack,
        ),
      ],
    );
  }
}

