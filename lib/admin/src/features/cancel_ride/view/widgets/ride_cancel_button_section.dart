import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/cancel_ride/view_model/a_cancel_veiw_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class RideCancelButtonSection extends StatelessWidget {
  final int index;
  final ACancelViewModel cancelViewModel;
  const RideCancelButtonSection(
      {super.key, required this.cancelViewModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            cancelViewModel.seeDetailsToggle(index);
          },
          child: Text(
            cancelViewModel.isSeeDetails[index] ? "See Less" : "See Details",
            style: AppTextStyle.ralewayStyle(),
          ),
        ),
        Row(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: kCancelColor),
            ),
            const SizedBox(width: 5),
            Text(
              "Cancelled",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
