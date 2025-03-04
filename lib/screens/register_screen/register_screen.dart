import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/helpers/validator_helper.dart';
import 'package:dochome/utils/widgets/app_name_rich_text.dart';
import 'package:dochome/utils/widgets/dh_outline_button.dart';
import 'package:dochome/utils/widgets/dh_text_form_field.dart';
import 'package:dochome/values/strings/app_routes_string.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode createAccountFocusNode = FocusNode();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    createAccountFocusNode.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      // Implement account creation logic
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
                  AppLogoWithAppName(),
                  20.height,
                  Text(
                    AppStrings.createAccount,
                    style: context.theme.displayLarge,
                  ),
                  8.height,
                  Text(
                    AppStrings.createAccountSubText,
                    style: context.theme.displayMedium,
                  ),
                  32.height,
                  DHTextFormField(
                    controller: nameController,
                    hintText: AppStrings.nameHintText,
                    icon: AppIconStrings.userIcon,
                    focusNode: nameFocusNode,
                    nextFocusNode: emailFocusNode,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  20.height,
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
                    nextFocusNode: createAccountFocusNode,
                    textInputAction: TextInputAction.done,
                    validator: passwordValidator,
                  ),
                  24.height,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      focusNode: createAccountFocusNode,
                      onPressed: _validateAndSubmit,
                      child: Text(
                        AppStrings.createAccount,
                        style: context.theme.labelMedium,
                      ),
                    ),
                  ),
                  22.height,
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          AppStrings.or,
                          style: context.themeExtension?.displayMediumGrey,
                        ),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  22.height,
                  DHOutlineButton(
                    icon: AppIconStrings.googleIcon,
                    text: '${AppStrings.continueWith} ${AppStrings.googleText}',
                  ),
                  12.height,
                  DHOutlineButton(
                    icon: AppIconStrings.facebookIcon,
                    text: '${AppStrings.continueWith} ${AppStrings.facebookText}',
                  ),
                  24.height,
                  RichText(
                    text: TextSpan(
                      text: AppStrings.haveAccount,
                      style: context.theme.displayMedium,
                      children: [
                        TextSpan(
                          text: ' ${AppStrings.signIn}',
                          style: context.themeExtension?.displayMediumBlue,
                          recognizer:
                          TapGestureRecognizer()
                            ..onTap =
                                () => Navigator.pushReplacementNamed(
                              context,
                              AppRouteStrings.loginScreen,
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
