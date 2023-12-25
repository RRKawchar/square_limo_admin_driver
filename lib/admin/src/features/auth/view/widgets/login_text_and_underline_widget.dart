import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class LoginTextAndUnderLineWidget extends StatelessWidget {
  const LoginTextAndUnderLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppTextStyle.ralewayStyle(fontSize: 24),
          ),
          SizedBox(
            height: context.screenHeight * 0.002,
          ),
          Container(
            width: 36,
            height: 1,
            color: kPrimaryColor,
          )
        ],
      ),
    );
}

}
