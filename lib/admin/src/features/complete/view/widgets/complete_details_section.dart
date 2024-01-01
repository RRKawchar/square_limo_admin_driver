import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view_model/a_complete_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class CompleteDetailsSection extends StatelessWidget {
  final int index;
  final ACompleteViewModel completeViewModel;
  const CompleteDetailsSection({super.key, required this.index, required this.completeViewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          completeViewModel.isSeeDetails[index] ? 8 : 15,
        ),
        completeViewModel.isSeeDetails[index]
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
