import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class KCustomAppbarTitleWidget extends StatelessWidget {
  final String title;
  const KCustomAppbarTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.ralewayStyle(fontSize: 20),
        ),
        const SizedBox(height: 3),
        Container(
          height: 1,
          width: 40,
          decoration: BoxDecoration(
            color: context.primaryColor,
          ),
        ),
      ],
    );
  }
}
