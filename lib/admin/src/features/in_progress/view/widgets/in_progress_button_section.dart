import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/view_model/in_progress_view_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class InProgressButtonSection extends StatelessWidget {
  final int index;
  final InProgressViewModel progressViewModel;
  const InProgressButtonSection(
      {super.key, required this.progressViewModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => progressViewModel.seeDetailsToggle(index),
          child: Text(
            progressViewModel.isSeeDetails[index] ? "See Less" : "See Details",
            style: AppTextStyle.ralewayStyle(),
          ),
        ),
        Row(
          children: [
            Container(
              height: 10,
              width: 10,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: kProgressColor),
            ),
            const SizedBox(width: 5),
            Text(
              "In-Progress",
              style: AppTextStyle.ralewayStyle(fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
