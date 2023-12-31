import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';

class ARequestCardItemWidget extends StatefulWidget {
  final int itemCount;
  final ScrollPhysics physics;
  final EdgeInsetsGeometry padding;
  const ARequestCardItemWidget({super.key, required this.itemCount, required this.physics, required this.padding});

  @override
  State<ARequestCardItemWidget> createState() => _ARequestCardItemWidgetState();
}

class _ARequestCardItemWidgetState extends State<ARequestCardItemWidget> {

  final homeViewModel=Get.find<AHomeViewModel>();
  late List<bool> _expandedList;

  @override
  void initState() {
    super.initState();
    _expandedList = List.generate(widget.itemCount, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: widget.physics,
      shrinkWrap: true,
      itemCount: widget.itemCount,
      itemBuilder: (context, index) {
        return Padding(
          padding: widget.padding,
          child: Container(
            height:_expandedList[index]? 356 : 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kBlack,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 8, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: [
                            CustomNetworkImage(
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                              image: newRequestList[index].image,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            const SizedBox(width: 5),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  newRequestList[index].name,
                                  style: AppTextStyle.ralewayStyle(fontSize: 14),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  newRequestList[index].phone,
                                  style: AppTextStyle.interStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            size: 20,
                          ),
                          SizedBox(width: 3),
                          Text("2 Days"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pick Up Date :${newRequestList[index].pickUpDate}",
                        style: AppTextStyle.ralewayStyle(fontSize: 12),
                      ),
                      Text(
                        "Pick Up Time :${newRequestList[index].pickUpTime}",
                        style: AppTextStyle.ralewayStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email :${newRequestList[index].email}",
                        style: AppTextStyle.ralewayStyle(fontSize: 12),
                      ),
                      Text(
                        "Service :${newRequestList[index].service}",
                        style: AppTextStyle.ralewayStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: _expandedList[index] ? 8 : 15),
                  _expandedList[index]
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                "Pick-Up Location:  ${newRequestList[index].pickUpLocation}"),
                            const SizedBox(height: 5),
                            Text(
                                "Drop-off Location:  ${newRequestList[index].dropOffLocation}"),
                            const SizedBox(height: 5),
                            Text(
                                "Other Notes:  ${newRequestList[index].otherNote}"),
                            const SizedBox(height: 5),
                            Text("Fleet:  ${newRequestList[index].fleet}"),
                          ],
                        )
                      : Container(),
                  SizedBox(height: _expandedList[index] ? 15 : 8),

                  /// See Details , Deny and Accept Button here
                  _requestButtonSection(index),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _requestButtonSection(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _expandedList[index] = !_expandedList[index];
            });
          },
          child: Text(
            _expandedList[index] ? "See Less" : "See Details",
            style: AppTextStyle.ralewayStyle(),
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 24,
                width: 76,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(width: 2, color: context.primaryColor),
                ),
                child: Text(
                  "Deny",
                  style: AppTextStyle.ralewayStyle(
                      fontSize: 14, color: context.primaryColor),
                ),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 24,
                width: 76,
                decoration: BoxDecoration(
                  color: context.primaryColor,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text(
                  "Accept",
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
