import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class StatisticsItemWidget2 extends StatelessWidget {
  final String title;
  final String number;
  const StatisticsItemWidget2({
    super.key,
    required this.title,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.ralewayStyle(fontSize: 12),
        ),
        const SizedBox(height: 5),
        Text(
          number,
          style: AppTextStyle.interStyle(fontSize: 14),
        ),
        const Divider(),
      ],
    );
  }
}
