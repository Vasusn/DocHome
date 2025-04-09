import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/image_string.dart';
import 'package:flutter/material.dart';

class UpcomingScreen extends StatelessWidget {
  const UpcomingScreen({super.key});

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
              isCompleted: true,
              image: AppImagesStrings.welcomeScreen1,
            ),
            10.height,
            const DHUpcomingCard(
              dateTime: 'June 14, 2023 - 03.00 PM',
              drName: 'Dr. Daniel Lee',
              drDegree: 'Cardiology',
              hospitalLocation: 'Heart Care Clinic, USA',
              isCompleted: true,
              image: AppImagesStrings.welcomeScreen2,
            ),
            10.height,
            const DHUpcomingCard(
              dateTime: 'July 10, 2023 - 11.30 AM',
              drName: 'Dr. Sarah Thompson',
              drDegree: 'Dermatology',
              hospitalLocation: 'Skin Glow Center, USA',
              isCompleted: true,
              image: AppImagesStrings.welcomeScreen3,
            ),
          ],
        ),
      ),
    );
  }
}

class DHUpcomingCard extends StatelessWidget {
  const DHUpcomingCard({
    required this.dateTime,
    required this.drName,
    required this.drDegree,
    required this.hospitalLocation,
    required this.isCompleted,
    required this.image,
    super.key,
  });

  final String dateTime;
  final String drName;
  final String drDegree;
  final String hospitalLocation;
  final String image;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date & Time
          Text(dateTime, style: context.themeExtension?.displayMediumBoldBlack),
          4.height,
          const Divider(),
          4.height,

          // Doctor Details Row
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  image,
                  height: 108,
                  width: 108,
                  fit: BoxFit.cover,
                ),
              ),
              12.width,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drName,
                      style: context.themeExtension?.labelMediumBold,
                    ),
                    8.height,
                    Text(
                      drDegree,
                      style: context.themeExtension?.displayMediumBoldBlack,
                    ),
                    8.height,
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 16,
                          color: Colors.grey,
                        ),
                        4.width,
                        Expanded(
                          child: Text(
                            hospitalLocation,
                            style: context.themeExtension?.displayMediumGrey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          4.height,
          const Divider(),

          // Action Buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                  ),
                  child: Text(
                    isCompleted ? 'Cancel' : 'Re-Book',
                    style: context.themeExtension?.displayMediumBoldBlack,
                  ),
                ),
              ),
              16.width,
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    isCompleted ? 'Reschedule' : 'Add Review',
                    style: context.themeExtension?.displayMediumSemiBoldWhite,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
