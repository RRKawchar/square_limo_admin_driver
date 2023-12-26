import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/widgets/a_back_button_wrapper_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/widgets/pin_code_field_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/widgets/a_text_with_underline_widget.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/helpers/validators.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';

class AOtpVerificationArguments {
  final String emailAddress;
  final bool previousScreenIsRegistration;

  AOtpVerificationArguments({
    required this.emailAddress,
    required this.previousScreenIsRegistration,
  });
}

class AOtpVerificationScreen extends StatefulWidget {
  final AOtpVerificationArguments arguments;
  const AOtpVerificationScreen({super.key, required this.arguments});

  @override
  State<AOtpVerificationScreen> createState() => _AOtpVerificationScreenState();
}

class _AOtpVerificationScreenState extends State<AOtpVerificationScreen> {
  final otpFormKey = GlobalKey<FormState>();
  final pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ABackButtonWrapperWidget(
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: otpFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: context.screenHeight * 0.2),
                const ATextWithUnderLineWidget(
                  text: "OTP Verification",
                  width: 44,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    "Please enter the OTP we sent to our provided email address.",
                    style: context.appTextTheme.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.arguments.emailAddress,
                    style: AppTextStyle.ralewayStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: kPrimaryColor),
                  ),
                ),
                SizedBox(height: context.screenHeight * 0.04),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "OTP Code",
                    style: context.appTextTheme.bodyMedium!.copyWith(
                        color: context.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 8),
                PinCodeFieldWidget(
                  controller: pinCodeController,
                  validator: Validators.otpVerification,
                ),
                const SizedBox(height: 15),
                KButton(
                  child: Text(
                    "Verify",
                    style: context.buttonTextStyle,
                  ),
                  onPressed: () => onVerify(),
                ),
                _ResendRichTextWidget(onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onVerify() {
    if (otpFormKey.currentState!.validate()) {
      if (widget.arguments.previousScreenIsRegistration) {
        Get.offAllNamed(RouteGenerator.aDashboard);
      } else {
        Get.offAllNamed(RouteGenerator.aResetPasswordScreen);
      }
    }
  }
}

class _ResendRichTextWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const _ResendRichTextWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: context.screenHeight * 0.05,
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onPressed,
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Didn't get any code!  ",
                style: context.appTextTheme.bodyMedium,
              ),
              TextSpan(
                text: "Resend",
                style: context.appTextTheme.bodyMedium!
                    .copyWith(color: context.primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
