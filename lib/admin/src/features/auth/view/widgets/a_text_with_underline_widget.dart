import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class ATextWithUnderLineWidget extends StatelessWidget {
  final String text;
  final double? width;
  const ATextWithUnderLineWidget({super.key,required this.text,this.width});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
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
