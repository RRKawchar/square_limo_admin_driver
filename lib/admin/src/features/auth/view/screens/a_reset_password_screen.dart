import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/widgets/text_with_underline_widget.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/helpers/validators.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/services/dialog_services.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_text_form_field_with_title.dart';

class AResetPasswordScreen extends StatefulWidget {
  const AResetPasswordScreen({super.key});

  @override
  State<AResetPasswordScreen> createState() => _AResetPasswordScreenState();
}

class _AResetPasswordScreenState extends State<AResetPasswordScreen> {
  final _resetFormKey = GlobalKey<FormState>();
  final newPassController = TextEditingController();
  final confirmPassController = TextEditingController();

  @override
  void dispose() {
    newPassController.dispose();
    confirmPassController.dispose();
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
              key: _resetFormKey,
              child: Column(
                children: [
                  SizedBox(height: context.screenHeight * 0.2),

                  /// Credential with Underline
                  const TextWithUnderLineWidget(text: "Credential", width: 44),
                  SizedBox(height: context.screenHeight * 0.04),

                  KTextFormFieldWithTitle(
                    validator: Validators.passwordValidator,
                    title: "New Password",
                    controller: newPassController,
                    filled: true,
                    obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(height: context.screenHeight * 0.03),
                  KTextFormFieldWithTitle(
                    validator: Validators.passwordValidator,
                    title: "Confirm Password",
                    controller: confirmPassController,
                    filled: true,
                    obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 15),

                  KButton(
                    onPressed: () => onUpdate(),
                    child: Text(
                      "Update",
                      style: context.buttonTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onUpdate() {
    if (_resetFormKey.currentState!.validate()) {
      if (newPassController.text.toString() ==
          confirmPassController.text.toString()) {
        Get.offAllNamed(RouteGenerator.aDashboard);
      } else {
        DialogServices.flutterToastDialogMessage(
            message: "New password and confirm password does not match!");
      }
    }
  }
}
