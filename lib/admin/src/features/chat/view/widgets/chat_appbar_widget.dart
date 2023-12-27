import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class ChatAppBarWidget extends StatelessWidget {
  const ChatAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Chat"),
        Container(
          height: 1,
          width: 46,
          decoration: BoxDecoration(color: kPrimaryColor),
        )
      ],
    );
  }
}
