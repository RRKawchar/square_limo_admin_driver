import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class TextWithUnderLineWidget extends StatelessWidget {
  final String text;
  final double? width;
  final AlignmentGeometry? alignment;
  const TextWithUnderLineWidget({
    super.key,
    required this.text,
    this.width,
    this.alignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppTextStyle.ralewayStyle(fontSize: 24),
          ),
          SizedBox(
            height: context.screenHeight * 0.003,
          ),
          Container(
            width: width,
            height: 2,
            color: kPrimaryColor,
          )
        ],
      ),
    );
  }
}
