import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class SelectUserButton extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;
  const SelectUserButton({super.key, required this.image, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 132,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: kSelectionBorderColor)),
            child: Center(
              child: Image.asset(
                image,
                height: 90,
                width: 76,
              ),
            ),
          ),
        ),
        SizedBox(height: context.screenHeight * 0.02),
        Text(
         text,
          style: AppTextStyle.ralewayStyle(fontSize: 24),
        )
      ],
    );
  }
}
