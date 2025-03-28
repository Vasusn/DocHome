import 'package:dochome/modules/welcome/widgets/welcome_screen_1.dart';
import 'package:dochome/modules/welcome/widgets/welcome_screen_2.dart';
import 'package:dochome/modules/welcome/widgets/welcome_screen_3.dart';
import 'package:dochome/utils/extensions/mediaquery_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:flutter/material.dart';

enum WelcomePage { screen1, screen2, screen3 }

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  WelcomePage activePage = WelcomePage.screen1;

  final List<Widget> pages = const [
    WelcomeScreen1(),
    WelcomeScreen2(),
    WelcomeScreen3(),
  ];

  void changePage(int index) {
    setState(() {
      activePage = WelcomePage.values[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            onPageChanged: (index) => changePage(index),
            itemCount: pages.length,
            itemBuilder: (context, index) => pages[index],
          ),
          Positioned(
            bottom: context.height * 0.110,
            left: 40,
            right: 40,
            child: ElevatedButton(
              onPressed: () {
                switch (activePage) {
                  case WelcomePage.screen1:
                    pageControllerAnimation(activePage);
                    break;
                  case WelcomePage.screen2:
                    pageControllerAnimation(activePage);
                    break;
                  case WelcomePage.screen3:
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRouteStrings.registerScreen,
                      (route) => false,
                    );
                    break;
                }
              },
              child: Text(AppStrings.next, style: context.theme.labelMedium),
            ),
          ),
          Positioned(
            bottom: context.height * 0.070,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(pages.length, (index) {
                bool isActive = (activePage == WelcomePage.values[index]);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: isActive ? 24 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: isActive
                          ? AppColorStrings.midnightBlueColor
                          : AppColorStrings.greyColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              }),
            ),
          ),
          Positioned(
            bottom: context.height * 0.030,
            left: 20,
            right: 20,
            child: GestureDetector(
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context,
                AppRouteStrings.registerScreen,
                (route) => false,
              ),
              child: Text(
                AppStrings.skip,
                style: context.theme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void pageControllerAnimation(WelcomePage page) {
    pageController.animateToPage(
      page.index + 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }
}
