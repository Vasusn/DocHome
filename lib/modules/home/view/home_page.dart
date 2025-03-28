import 'package:dochome/modules/baby-register/view/baby_register_screen.dart';
import 'package:dochome/utils/widgets/dh_outline_button.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BabyRegistrationScreen(),
                  ),
                );
              },
              child: const DHOutlineButton(text: AppStrings.registerABaby),
            ),
            const Text(AppStrings.homePage, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
