import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNext();
    super.initState();
  }

  void _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(RouteGenerator.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.appLogoWithText,
                height: 53,
                width: context.screenWidth * 0.9,
              ),
              SizedBox(
                height: context.screenHeight * 0.04,
              ),
              Image.asset(
                AppAssets.cars,
                height: 140.63,
              )
            ],
          ),
        ),
      ),
    );
  }
}
