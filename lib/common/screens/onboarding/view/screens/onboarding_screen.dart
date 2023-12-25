import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';
import 'package:square_limo_admin_driver/common/screens/onboarding/view/widgets/onboarding_contant_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            /// onboarding content
            const OnboardingContentWidget(),

            /// Get Started Button
            Positioned(
              right: 0,
              bottom: context.screenHeight * 0.04,
              child: KButton(
                onPressed: onSave,
                borderRadius: 10,
                width: context.screenWidth * 0.4,
                child: Text(
                  "Get Started",
                  style: AppTextStyle.ralewayStyle(
                    color: kBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSave() {
    Get.offAllNamed(RouteGenerator.selectionScreen);
  }
}
