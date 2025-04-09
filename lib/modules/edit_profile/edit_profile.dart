import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/utils/widgets/dh_text_form_field.dart';
import 'package:dochome/values/strings/app_strings.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController useNameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    useNameController.dispose();
    nickNameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.editProfileAppbarText,
          style: context.theme.displayLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              32.height,
              const CircleAvatar(
                radius: 84,
                backgroundColor: AppColorStrings.greyColor,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: AppColorStrings.whiteColor,
                ),
              ),
              24.height,
              DHTextFormField(
                controller: useNameController,
                hintText: AppStrings.userNameHintText,
              ),
              20.height,
              DHTextFormField(
                controller: nickNameController,
                hintText: AppStrings.nicknameHintText,
              ),
              20.height,
              DHTextFormField(
                controller: emailController,
                hintText: AppStrings.emailHintText,
              ),
              20.height,
              DHTextFormField(
                controller: emailController,
                hintText: AppStrings.dobHintText,
                icon: AppIconStrings.appointmentIcon,
              ),
              20.height,
              DHTextFormField(
                controller: emailController,
                hintText: AppStrings.dobHintText,
              ),
              32.height,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.saveText,
                    style: context.theme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
