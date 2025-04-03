import 'package:dochome/modules/home/view/home_screen_page_view.dart';
import 'package:dochome/modules/home/view/home_categories.dart';
import 'package:dochome/modules/home/view/home_clinic_card.dart';
import 'package:dochome/modules/home/view/home_search_bar.dart';
import 'package:dochome/modules/home/view/home_set_location.dart';
import 'package:dochome/modules/home/view/home_widget_header.dart';
import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            10.height,
            const HomeSetLocation(),
            14.height,
            const HomeSearchBar(),
            14.height,
            const HomeScreenPageView(),
            16.height,
            const HomeWidgetHeader(),
            10.height,
            const HomeCategories(),
            16.height,
            const HomeWidgetHeader(leftText: AppStrings.nearbyClinics),
            10.height,
            const HomeClinicCard(),
            20.height,
          ],
        ),
      ),
    );
  }
}
