import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/model/complete_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view/widgets/a_ride_complete_button_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view/widgets/complete_details_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/complete/view_model/a_complete_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_image_name_phone_widget.dart';

class RideCompleteScreen extends StatefulWidget {
  const RideCompleteScreen({super.key});

  @override
  State<RideCompleteScreen> createState() => _RideCompleteScreenState();
}

class _RideCompleteScreenState extends State<RideCompleteScreen> {
  final completeViewModel = Get.find<ACompleteViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Complete Ride",
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: completeRideList.length,
        itemBuilder: (context, index) {
          final rideList = completeRideList[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Obx(
              () => Container(
                height: completeViewModel.isSeeDetails[index]
                    ? 356
                    : context.screenHeight * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kBlack,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 8, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Image , Name and Phone section
                      KImageNamePhoneWidget(
                        image: rideList.image,
                        name: rideList.name,
                        phone: rideList.phone,
                      ),
                      const SizedBox(height: 8),
                      CompleteDetailsSection(
                        index: index,
                        completeViewModel: completeViewModel,
                      ),
                      SizedBox(
                        height: completeViewModel.isSeeDetails[index] ? 15 : 8,
                      ),

                      /// See Details , Deny and Accept Button here
                      ARideCompleteButtonSection(
                        index: index,
                        completeViewModel: completeViewModel,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
