import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/widgets/app_logo_with_app_name.dart';
import 'package:dochome/utils/widgets/dh_bottom_rich_text.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                32.height,
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      AppIconStrings.backIcon,
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                32.height,
                AppLogoWithAppName(),
                20.height,
                Text(
                  AppStrings.verifyCodeText,
                  style: context.theme.displayLarge,
                ),
                8.height,
                Text(
                  AppStrings.verifyCodeSub,
                  style: context.theme.displayMedium,
                  textAlign: TextAlign.center,
                ),
                32.height,
                32.height,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        AppRouteStrings.resetPasswordScreen,
                      );
                    },
                    child: Text(
                      AppStrings.sendCode,
                      style: context.theme.labelMedium,
                    ),
                  ),
                ),
                24.height,
                DHBottomRichText(
                  mainText: AppStrings.notGetCode,
                  subText: ' ${AppStrings.resend}',
                  routeName: 'null',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
