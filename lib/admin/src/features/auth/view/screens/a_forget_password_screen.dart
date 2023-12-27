import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/screens/a_otp_verification_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/auth/view/widgets/a_back_button_wrapper_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/text_with_underline_widget.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/helpers/validators.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_text_form_field_with_title.dart';

class AForgetPasswordScreen extends StatefulWidget {
  const AForgetPasswordScreen({super.key});

  @override
  State<AForgetPasswordScreen> createState() => _AForgetPasswordScreenState();
}

class _AForgetPasswordScreenState extends State<AForgetPasswordScreen> {
  final forgetPasswordFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ABackButtonWrapperWidget(
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: forgetPasswordFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: context.screenHeight * 0.05),
                Icon(
                  CupertinoIcons.lock_shield_fill,
                  color: kPrimaryColor,
                  size: context.screenHeight * 0.18,
                ),
                SizedBox(height: context.screenHeight * 0.05),
                const TextWithUnderLineWidget(
                  text: "Forget Password",
                  width: 50,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: Text(
                    "Provide your account email for which we want to reset your password!",
                    style: context.appTextTheme.bodySmall,
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                KTextFormFieldWithTitle(
                  title: "Enter Email",
                  controller: emailController,
                  validator: Validators.emailValidator,
                  filled: true,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 12,
                ),
                KButton(
                  onPressed: () => onContinue(),
                  child: Text(
                    "Continue",
                    style: context.buttonTextStyle,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onContinue() {
    if (forgetPasswordFormKey.currentState!.validate()) {
      Get.toNamed(RouteGenerator.aOtpVerification,
      arguments: AOtpVerificationArguments(
          emailAddress: emailController.text,
          previousScreenIsRegistration: false,
      )

      );
    }
  }
}
