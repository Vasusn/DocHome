import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/helpers/validator_helper.dart';
import 'package:dochome/utils/widgets/app_logo_with_app_name.dart';
import 'package:dochome/utils/widgets/dh_text_form_field.dart';
import 'package:dochome/values/strings/app_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  void _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      // Implement reset password logic
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
                  const AppLogoWithAppName(),
                  20.height,
                  Text(
                    AppStrings.createNewPassword,
                    style: context.theme.displayLarge,
                  ),
                  8.height,
                  Text(
                    AppStrings.createNewPasswordSub,
                    style: context.theme.displayMedium,
                    textAlign: TextAlign.center,
                  ),
                  32.height,
                  DHTextFormField(
                    controller: passwordController,
                    hintText: AppStrings.passwordHintText,
                    icon: AppIconStrings.lockIcon,
                    focusNode: passwordFocusNode,
                    nextFocusNode: confirmPasswordFocusNode,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    validator: passwordValidator,
                  ),
                  20.height,
                  DHTextFormField(
                    controller: confirmPasswordController,
                    hintText: AppStrings.confirmPasswordHintText,
                    icon: AppIconStrings.lockIcon,
                    focusNode: confirmPasswordFocusNode,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    validator: (value) {
                      return (value != null && value == passwordController.text)
                          ? null
                          : 'Passwords do not match';
                    },
                  ),
                  32.height,
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _validateAndSubmit,
                      child: Text(
                        AppStrings.resetPassword,
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
