import 'package:dochome/utils/extensions/sizedbox_extension.dart';
import 'package:dochome/utils/extensions/text_theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DHOutlineButton extends StatelessWidget {
  const DHOutlineButton({required this.text, super.key, this.icon});

  final String? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              SvgPicture.asset(icon!, height: 20, width: 20)
            else
              const SizedBox.shrink(),
            8.width,
            Text(text, style: context.theme.displayMedium),
          ],
        ),
      ),
    );
  }
}
