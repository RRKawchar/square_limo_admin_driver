import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view/widgets/pending_button_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view/widgets/pending_details_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/pending/view_model/pending_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_image_name_phone_widget.dart';

class APendingScreen extends StatefulWidget {
  const APendingScreen({super.key});

  @override
  State<APendingScreen> createState() => _APendingScreenState();
}

class _APendingScreenState extends State<APendingScreen> {
  final pendingViewModel = Get.find<PendingViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Pending Ride",
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: rideDataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: Obx(
              () => Container(
                height: pendingViewModel.isSeeDetails[index]
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
                      /// Image, name, phone, and days widgets
                      KImageNamePhoneWidget(
                        image: rideDataList[index].image,
                        name: rideDataList[index].name,
                        phone: rideDataList[index].phone,
                      ),
                      const SizedBox(height: 8),

                      /// Pickup date time, email, service, location, fleet, other notes
                      PendingDetailsSection(
                        index: index,
                        pendingViewModel: pendingViewModel,
                      ),

                      SizedBox(
                        height: pendingViewModel.isSeeDetails[index] ? 15 : 8,
                      ),

                      /// See Details , Deny and Accept Button here
                      PendingButtonSection(
                        pendingViewModel: pendingViewModel,
                        index: index,
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
