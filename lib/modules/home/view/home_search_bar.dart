import 'package:dochome/values/strings/app_strings.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColorStrings.grey100Color,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: AppStrings.searchDoctorHint,
            hintStyle: const TextStyle(color: AppColorStrings.grey400Color),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SvgPicture.asset(AppIconStrings.homeSearchNormalIcon),
            ),
            prefixIconConstraints: const BoxConstraints(
              maxHeight: 24,
              maxWidth: 80,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
