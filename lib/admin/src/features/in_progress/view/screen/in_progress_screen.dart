import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/model/in_progress_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/view/widgets/in_progress_button_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/in_progress/view_model/in_progress_view_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_image_name_phone_widget.dart';

class InProgressScreen extends StatefulWidget {
  const InProgressScreen({super.key});

  @override
  State<InProgressScreen> createState() => _InProgressScreenState();
}

class _InProgressScreenState extends State<InProgressScreen> {
  final inProgressViewModel = Get.find<InProgressViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "In-Progress-Ride",
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: inProgressList.length,
        itemBuilder: (context, index) {
          final rideList = inProgressList[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Obx(
              () => Container(
                height: inProgressViewModel.isSeeDetails[index] ? 356 : 180,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pick Up Date :${rideList.pickUpDate}",
                            style: AppTextStyle.ralewayStyle(fontSize: 12),
                          ),
                          Text(
                            "Pick Up Time :${rideList.pickUpTime}",
                            style: AppTextStyle.ralewayStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email :${rideList.email}",
                            style: AppTextStyle.ralewayStyle(fontSize: 12),
                          ),
                          Text(
                            "Service :${rideList.service}",
                            style: AppTextStyle.ralewayStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height:
                            inProgressViewModel.isSeeDetails[index] ? 8 : 15,
                      ),
                      inProgressViewModel.isSeeDetails[index]
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pick-Up Location:  ${rideList.pickUpLocation}",
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Drop-off Location:  ${rideList.dropOffLocation}",
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Other Notes:  ${rideList.otherNote}",
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Fleet:  ${rideList.fleet}",
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Assigned Driver: Reed Richard",
                                ),
                              ],
                            )
                          : Container(),
                      SizedBox(
                        height:
                            inProgressViewModel.isSeeDetails[index] ? 15 : 8,
                      ),

                      /// See Details , Deny and Accept Button here
                      InProgressButtonSection(
                          progressViewModel: inProgressViewModel, index: index),
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
