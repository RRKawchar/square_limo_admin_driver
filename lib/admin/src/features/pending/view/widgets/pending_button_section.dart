import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view_model/pending_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class PendingButtonSection extends StatelessWidget {
  final int index;
  final PendingViewModel pendingViewModel;
  const PendingButtonSection(
      {super.key, required this.pendingViewModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            pendingViewModel.seeDetailsToggle(index);
          },
          child: Text(
            pendingViewModel.isSeeDetails[index] ? "See Less" : "See Details",
            style: AppTextStyle.ralewayStyle(),
          ),
        ),
        Row(
          children: [

            Container(
              height: 10,
              width: 10,
              decoration:
              BoxDecoration(shape: BoxShape.circle, color: kPendingColor),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 24,
                width: 120,
                decoration: BoxDecoration(
                  color: context.primaryColor,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  "Assign Driver",
                  style: AppTextStyle.ralewayStyle(fontSize: 14, color: kBlack),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
