import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';

class KImageNamePhoneWidget extends StatelessWidget {
  final String image;
  final String name;
  final String phone;
  const KImageNamePhoneWidget({super.key, required this.image, required this.name, required this.phone,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: [
              CustomNetworkImage(
                height: 60,
                width: 60,
                fit: BoxFit.cover,
                image: image,
                borderRadius: BorderRadius.circular(5),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextStyle.ralewayStyle(
                        fontSize: 14),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    phone,
                    style: AppTextStyle.interStyle(),
                  )
                ],
              ),
            ],
          ),
        ),
        const Row(
          children: [
            Icon(
              Icons.access_time_outlined,
              size: 20,
            ),
            SizedBox(width: 3),
            Text("2 Days"),
          ],
        ),
      ],
    );
  }
}
