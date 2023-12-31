import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view_model/a_complete_view_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class ARideCompleteButtonSection extends StatelessWidget {
  final int index;
  final ACompleteViewModel completeViewModel;
  const ARideCompleteButtonSection({super.key, required this.index, required this.completeViewModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            completeViewModel.seeToggleDetails(index);
          },
          child: Text(
            completeViewModel.isSeeDetails[index] ? "See Less" : "See Details",
            style: AppTextStyle.ralewayStyle(),
          ),
        ),
        Row(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: kCompleteColor),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "Completed",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
