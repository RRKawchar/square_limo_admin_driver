import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/cancel_ride/view/widgets/cancel_details_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/cancel_ride/view/widgets/ride_cancel_button_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/cancel_ride/view_model/a_cancel_veiw_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_image_name_phone_widget.dart';

class RideCancelScreen extends StatefulWidget {
  const RideCancelScreen({super.key});

  @override
  State<RideCancelScreen> createState() => _RideCancelScreenState();
}

class _RideCancelScreenState extends State<RideCancelScreen> {


  final cancelViewModel=Get.find<ACancelViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Ride-Cancel",
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
                height: cancelViewModel.isSeeDetails[index]
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
                      CancelDetailsSection(
                        index: index,
                        cancelViewModel: cancelViewModel,
                      ),

                      SizedBox(
                        height: cancelViewModel.isSeeDetails[index] ? 15 : 8,
                      ),

                      /// See Details , Deny and Accept Button here
                      RideCancelButtonSection(cancelViewModel: cancelViewModel, index: index)
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
