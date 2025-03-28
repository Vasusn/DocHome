import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/helpers/validator_helper.dart';
import 'package:dochome/utils/widgets/app_logo_with_app_name.dart';
import 'package:dochome/utils/widgets/dh_text_form_field.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(
        context,
        AppRouteStrings.otpVerificationScreen,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formKey,
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
                    AppStrings.forgotPasswordText,
                    style: context.theme.displayLarge,
                  ),
                  8.height,
                  Text(
                    AppStrings.forgotPasswordSubText,
                    style: context.theme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  32.height,
                  DHTextFormField(
                    controller: emailController,
                    hintText: AppStrings.emailHintText,
                    icon: AppIconStrings.smsIcon,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    validator: emailValidator,
                  ),
                  32.height,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _validateAndSubmit,
                      child: Text(
                        AppStrings.sendCode,
                        style: context.theme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
