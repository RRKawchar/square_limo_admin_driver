import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/widgets/text_with_underline_widget.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/helpers/validators.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_text_form_field_with_title.dart';

class ALoginScreen extends StatefulWidget {
  const ALoginScreen({super.key});

  @override
  State<ALoginScreen> createState() => _ALoginScreenState();
}

class _ALoginScreenState extends State<ALoginScreen> {
  final loginKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: loginKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.13,
                  ),
                  Image.asset(
                    AppAssets.appLogoWithText,
                    width: context.screenWidth,
                    height: 54,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.05,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: context.screenHeight * 0.5,
                    width: context.screenWidth,
                    decoration: BoxDecoration(
                      color: kBlack,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Login and Under Line
                        const TextWithUnderLineWidget(
                          text: "Login",
                          width: 36,
                        ),

                        SizedBox(height: context.screenHeight * 0.05),

                        /// Login Email Field
                        KTextFormFieldWithTitle(
                          validator: Validators.emailValidator,
                          textInputAction: TextInputAction.next,
                          title: "User Email",
                          controller: emailController,
                          filled: true,
                        ),

                        SizedBox(height: context.screenHeight * 0.04),

                        /// Login Password Field
                        KTextFormFieldWithTitle(
                          validator: Validators.passwordValidator,
                          maxLines: 1,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          title: "Password",
                          obscureText: true,
                          controller: passwordController,
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              size: 20,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),

                        SizedBox(height: context.screenHeight * 0.008),

                        /// Forget Password Button
                        const _ForgetPasswordButton(),
                        SizedBox(height: context.screenHeight * 0.04),

                        /// Login button
                        KButton(
                          onPressed: onLogin,
                          child: Text("Login", style: context.buttonTextStyle),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onLogin() {
    if (loginKey.currentState!.validate()) {
      Get.offAllNamed(RouteGenerator.aDashboard);
    }
  }
}

class _ForgetPasswordButton extends StatelessWidget {
  const _ForgetPasswordButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Get.toNamed(RouteGenerator.aForgetPassword),
        child: Text(
          "Forget Password",
          style: AppTextStyle.ralewayStyle(
            fontSize: 14,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
