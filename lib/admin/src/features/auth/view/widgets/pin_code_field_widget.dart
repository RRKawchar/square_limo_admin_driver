import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/helpers/helper_method.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class PinCodeFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final bool obscureText;
  final String obscuringCharacter;
  const PinCodeFieldWidget({
    super.key,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.obscuringCharacter = '*',
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: context.screenWidth * 0.17,
        fieldWidth: context.screenWidth * 0.17,
        activeFillColor: kWhite,
        activeColor: context.primaryColor,
        inactiveColor: kGreyLight,
        inactiveFillColor: kGreyLight,
        selectedColor: context.primaryColor,
        selectedFillColor: context.primaryColor.withOpacity(0.15),
      ),
      textStyle: context.appTextTheme.titleLarge!.copyWith(
        color: context.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      animationDuration: const Duration(milliseconds: 300),
      cursorColor: context.primaryColor,
      enableActiveFill: true,
      animationType: AnimationType.fade,
      onCompleted: (v) {
        kPrint("OnCompleted");
      },
      onChanged: (value) {
        kPrint(value);
      },
      beforeTextPaste: (text) {
        kPrint("Allowing text $text");
        return true;
      },
    );
  }
}
