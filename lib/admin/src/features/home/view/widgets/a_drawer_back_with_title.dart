import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/widgets/text_with_underline_widget.dart';

class ADrawerBackWithTitle extends StatelessWidget {
  const ADrawerBackWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButton(
          color: context.primaryColor,
        ),
        SizedBox(
          width: context.screenWidth * 0.35,
        ),
        const TextWithUnderLineWidget(
          text: "Profile",
          width: 40,
          fontSize: 20,
        )
      ],
    );
  }
}
