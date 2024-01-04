import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/fake_data/fake_data.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';

class ADrawerProfileItemWidget extends StatelessWidget {
  const ADrawerProfileItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.10,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomNetworkImage(
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                image: fakeProfileImage,
                borderRadius: BorderRadius.circular(50),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Riyazur Rohamn Kawchar",
                    style:
                    AppTextStyle.ralewayStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "riyazurrohmankawchar@gmail.com",
                    style:
                    AppTextStyle.ralewayStyle(fontSize: 14),
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
