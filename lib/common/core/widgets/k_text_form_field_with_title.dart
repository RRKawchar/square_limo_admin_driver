import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class KTextFormFieldWithTitle extends StatelessWidget {
  final TextEditingController controller;
  final int? maxLines;
  final int? minLines;
  final VoidCallback? onTap;
  final bool obscureText;
  final bool? filled;
  final String? hintText;
  final TextInputType? textInputType;
  final String? title;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final IconData? prefixIconData;

  const KTextFormFieldWithTitle({
    super.key,
    required this.controller,
    this.maxLines,
    this.onTap,
    this.obscureText = false,
    this.filled,
    this.hintText,
    this.minLines,
    this.textInputType,
    this.title,
    this.readOnly = false,
    this.textInputAction,
    this.suffixIcon,
    this.prefixIconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title ?? "",
          style: AppTextStyle.ralewayStyle(
            color: kPrimaryColor,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: context.screenHeight * 0.003,
        ),
        TextFormField(
          onTap: onTap,
          controller: controller,
          textAlign: TextAlign.start,
          maxLines: maxLines,
          minLines: minLines,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          readOnly: readOnly,
          obscureText: obscureText,
          style: context.appTextTheme.titleSmall?.copyWith(
            color: kBlackLight,
            fontWeight: FontWeight.w500,
            decorationColor: kBlackLight,
          ),
          decoration: InputDecoration(
              fillColor: kWhite,
              hintText: hintText,
              hintStyle: context.appTextTheme.bodySmall,
              isDense: true,
              filled: filled,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 15, vertical: suffixIcon != null ? 9 : 13),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              prefixIcon: prefixIconData != null ? Icon(prefixIconData) : null,
              suffixIcon: suffixIcon),
        ),
      ],
    );
  }
}
