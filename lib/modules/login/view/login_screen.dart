import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/helpers/validator_helper.dart';
import 'package:dochome/utils/widgets/app_logo_with_app_name.dart';
import 'package:dochome/utils/widgets/dh_outline_button.dart';
import 'package:dochome/utils/widgets/dh_text_form_field.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode signInFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    signInFocusNode.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, AppRouteStrings.homeScreen);
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
                  const AppLogoWithAppName(),
                  20.height,
                  Text(
                    AppStrings.loginHeaderText,
                    style: context.theme.displayLarge,
                  ),
                  8.height,
                  Text(
                    AppStrings.loginHeaderSubText,
                    style: context.theme.displayMedium,
                  ),
                  32.height,
                  DHTextFormField(
                    controller: emailController,
                    hintText: AppStrings.emailHintText,
                    icon: AppIconStrings.smsIcon,
                    focusNode: emailFocusNode,
                    nextFocusNode: passwordFocusNode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    validator: emailValidator,
                  ),
                  20.height,
                  DHTextFormField(
                    controller: passwordController,
                    hintText: AppStrings.passwordHintText,
                    icon: AppIconStrings.lockIcon,
                    focusNode: passwordFocusNode,
                    obscureText: true,
                    nextFocusNode: signInFocusNode,
                    textInputAction: TextInputAction.done,

                    validator: passwordValidator,
                  ),
                  24.height,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      focusNode: signInFocusNode,
                      onPressed: _validateAndSubmit,
                      child: Text(
                        AppStrings.signIn,
                        style: context.theme.labelMedium,
                      ),
                    ),
                  ),
                  22.height,
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          AppStrings.or,
                          style: context.themeExtension?.displayMediumGrey,
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  22.height,
                  const DHOutlineButton(
                    icon: AppIconStrings.googleIcon,
                    text: '${AppStrings.signInWith} ${AppStrings.googleText}',
                  ),
                  12.height,
                  const DHOutlineButton(
                    icon: AppIconStrings.facebookIcon,
                    text: '${AppStrings.signInWith} ${AppStrings.facebookText}',
                  ),
                  24.height,
                  GestureDetector(
                    onTap:
                        () => Navigator.pushNamed(
                          context,
                          AppRouteStrings.forgotPasswordScreen,
                        ),
                    child: Text(
                      AppStrings.forgotPasswordText,
                      style: context.themeExtension?.displayMediumBlue,
                    ),
                  ),
                  24.height,
                  RichText(
                    text: TextSpan(
                      text: AppStrings.notHaveAccount,
                      style: context.theme.displayMedium,
                      children: [
                        TextSpan(
                          text: ' ${AppStrings.signUp}',
                          style: context.themeExtension?.displayMediumBlue,
                          recognizer:
                              TapGestureRecognizer()
                                ..onTap =
                                    () => Navigator.pushReplacementNamed(
                                      context,
                                      AppRouteStrings.registerScreen,
                                    ),
                        ),
                      ],
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
