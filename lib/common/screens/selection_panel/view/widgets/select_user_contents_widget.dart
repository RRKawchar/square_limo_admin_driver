import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class SelectUserContentsWidget extends StatelessWidget {
  const SelectUserContentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.appLogoWithText,
          height: 53,
          width: context.screenWidth,
        ),
        SizedBox(
          height: context.screenHeight * 0.04,
        ),
        Text(
          "Select User",
          style: AppTextStyle.ralewayStyle(
            fontSize: 24,
          ),
        ),
      ],
    );
  }
}
