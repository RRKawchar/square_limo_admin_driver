import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view_model/pending_view_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class PendingDetailsSection extends StatelessWidget {
  final int index;
  final PendingViewModel pendingViewModel;
  const PendingDetailsSection({super.key, required this.index, required this.pendingViewModel});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pick Up Date :${rideDataList[index].pickUpDate}",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            ),
            Text(
              "Pick Up Time :${rideDataList[index].pickUpTime}",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          "Email :${rideDataList[index].email}",
          style: AppTextStyle.ralewayStyle(fontSize: 12),
        ),
        const SizedBox(height: 8),
        Text(
          "Service :${rideDataList[index].service}",
          style: AppTextStyle.ralewayStyle(fontSize: 12),
        ),
        SizedBox(
          height:
          pendingViewModel.isSeeDetails[index] ? 8 : 15,
        ),
        pendingViewModel.isSeeDetails[index]
            ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Pick-Up Location:  ${rideDataList[index].pickUpLocation}"),
            const SizedBox(height: 5),
            Text(
                "Drop-off Location:  ${rideDataList[index].dropOffLocation}"),
            const SizedBox(height: 5),
            Text(
                "Other Notes:  ${rideDataList[index].otherNote}"),
            const SizedBox(height: 5),
            Text(
                "Fleet:  ${rideDataList[index].fleet}"),
          ],
        )
            : Container(),
      ],
    );
  }
}
