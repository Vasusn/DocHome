import 'package:dochome/modules/booking_screen/canceled_screen.dart';
import 'package:dochome/modules/booking_screen/completed_screen.dart';
import 'package:dochome/modules/booking_screen/upcoming_screen.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.myBookingText,
            style: context.themeExtension?.displayLargeSemiBoldBlack,
          ),
          bottom: TabBar(
            labelStyle: context.themeExtension?.labelMediumBold,
            unselectedLabelStyle:
                context.themeExtension?.labelMediumSemiBoldGrey,

            labelPadding: const EdgeInsets.symmetric(vertical: 6),
            tabs: const [
              Tab(text: 'Upcoming'),
              Tab(text: 'Completed'),
              Tab(text: 'Canceled'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [UpcomingScreen(), CompletedScreen(), CanceledScreen()],
        ),
      ),
    );
  }
}
