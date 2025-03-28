import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DHTextFormField extends StatelessWidget {
  const DHTextFormField({
    required this.controller,
    required this.hintText,
    this.icon,
    this.obscureText = false,
    this.focusNode,
    this.nextFocusNode,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;
  final String? icon;
  final bool obscureText;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColorStrings.blackColor,
      obscureText: obscureText,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onFieldSubmitted: (value) {
        if (nextFocusNode != null) {
          FocusScope.of(context).requestFocus(nextFocusNode);
        } else {
          FocusScope.of(context).unfocus();
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.theme.displayMedium,
        prefixIcon:
            icon != null
                ? Padding(
                  padding: const EdgeInsets.only(left: 16, top: 14, bottom: 14),
                  child: SvgPicture.asset(
                    //   colorFilter: ColorFilter.mode(
                    //     AppColorStrings.greyColor,
                    //     BlendMode.srcIn,
                    //   ),
                    //   width: 18,
                    //   height: 18,
                    // ),
                    icon!,
                  ),
                )
                : null, // Remove padding if no icon
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColorStrings.greyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColorStrings.greyColor,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColorStrings.greyColor),
        ),
        filled: true,
        fillColor: AppColorStrings.lightBgGreyColor,
      ),
    );
  }
}
