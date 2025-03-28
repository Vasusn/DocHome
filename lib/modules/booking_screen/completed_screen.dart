import 'package:dochome/modules/booking_screen/upcoming_screen.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/image_string.dart';
import 'package:flutter/material.dart';

class CompletedScreen extends StatelessWidget {
  const CompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorStrings.grey100Color,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: ListView(
          children: [
            const DHUpcomingCard(
              dateTime: 'May 22, 2023 - 10.00 AM',
              drName: 'Dr. James Robinson',
              drDegree: 'Orthopedic Surgery',
              hospitalLocation: 'Elite Ortho Clinic, USA',
              isCompleted: false,
              image: AppImagesStings.welcomeScreen1,
            ),
            10.height,
            const DHUpcomingCard(
              dateTime: 'June 14, 2023 - 03.00 PM',
              drName: 'Dr. Daniel Lee',
              drDegree: 'Cardiology',
              hospitalLocation: 'Heart Care Clinic, USA',
              isCompleted: false,
              image: AppImagesStings.welcomeScreen2,
            ),
            10.height,
            const DHUpcomingCard(
              dateTime: 'July 10, 2023 - 11.30 AM',
              drName: 'Dr. Sarah Thompson',
              drDegree: 'Dermatology',
              hospitalLocation: 'Skin Glow Center, USA',
              isCompleted: false,
              image: AppImagesStings.welcomeScreen3,
            ),
          ],
        ),
      ),
    );
  }
}
