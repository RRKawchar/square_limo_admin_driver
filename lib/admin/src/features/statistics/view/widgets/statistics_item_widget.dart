import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class StatisticsItemWidget extends StatelessWidget {
  final String totalRide;
  final String totalEarning;
  final String averageEarning;
  const StatisticsItemWidget({
    super.key,
    required this.totalRide,
    required this.totalEarning,
    required this.averageEarning,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Complete Ride",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              totalRide,
              style: AppTextStyle.interStyle(fontSize: 14),
            ),
            const Divider(),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Earning",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              "\$$totalEarning",
              style: AppTextStyle.interStyle(fontSize: 14),
            ),
            const Divider(),
          ],
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Average Earning",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            ),
            const SizedBox(height: 5),
            Text(
              "\$$averageEarning",
              style: AppTextStyle.interStyle(fontSize: 14),
            ),
            const Divider(),
          ],
        ),
      ],
    );
  }
}
