import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class OnboardingContentWidget extends StatelessWidget {
  const OnboardingContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("welcome to".toUpperCase(),
            style: AppTextStyle.ralewayStyle(color: kPrimaryColor)),
        SizedBox(
          height: context.screenHeight * 0.010,
        ),
        Image.asset(
          AppAssets.appLogoWithText,
          height: 100,
          width: context.screenWidth * 0.9,
        ),
        SizedBox(
          height: context.screenHeight * 0.010,
        ),
        Image.asset(
          AppAssets.cars,
          height: 175,
          width: context.screenWidth,
        ),

      ],
    );
  }
}
