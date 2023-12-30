import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/text_with_underline_widget.dart';

class AHomeTitleWithViewAllBtn extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AHomeTitleWithViewAllBtn(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: TextWithUnderLineWidget(
              text: title,
              width: 50,
              fontSize: 16,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                Text(
                  "View All",
                  style: AppTextStyle.ralewayStyle(
                      fontSize: 14, color: context.primaryColor),
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward,
                  size: 22,
                  color: context.primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
