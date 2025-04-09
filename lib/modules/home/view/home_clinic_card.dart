import 'package:dochome/modules/home/values/home_screen_lists.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:flutter/material.dart';

class HomeClinicCard extends StatelessWidget {
  const HomeClinicCard({super.key});

  @override
  Widget build(BuildContext context) {
    const clinicNames = HomeScreenLists.clinicNames;
    const clinicImages = HomeScreenLists.clinicImages;
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: clinicNames.length,
        separatorBuilder: (_, _) => 16.width,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  offset: const Offset(4, 4),
                  blurRadius: 1,
                  spreadRadius: -1,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  child: SizedBox(
                    height: 120,
                    width: 230,
                    child: Image.asset(clinicImages[index], fit: BoxFit.cover),
                  ),
                ),
                8.height,
                Container(
                  width: 230,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    clinicNames[index],
                    overflow: TextOverflow.ellipsis,
                    style: context.themeExtension?.displayMediumGrey600Bold700,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
