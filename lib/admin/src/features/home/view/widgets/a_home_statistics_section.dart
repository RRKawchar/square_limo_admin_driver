import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class AHomeStatisticsSection extends StatelessWidget {
  final AHomeViewModel homeViewModel;
  final PageController pageController;
  AHomeStatisticsSection({
    super.key,
    required this.homeViewModel,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: homeViewModel.staticsItemList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    homeViewModel.updateCurrentIndex(index);
                    pageController.animateToPage(homeViewModel.currentIndex,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                  },
                  child: Obx(() => Container(
                        alignment: Alignment.center,
                        height: 27,
                        width: context.screenWidth * 0.26,
                        decoration: BoxDecoration(
                          color: homeViewModel.currentIndex == index
                              ? context.primaryColor
                              : const Color(0xFF171717),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(
                                  1, -2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Text(
                          homeViewModel.staticsItemList[index],
                          style: AppTextStyle.ralewayStyle(
                            fontSize: 12,
                            color: homeViewModel.currentIndex == index
                                ? kBlack
                                : kWhite,
                          ),
                        ),
                      )),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 70,
          child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _staticsWidgetList.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return _staticsWidgetList[index];
            },
          ),
        ),
      ],
    );
  }

  final List<Widget> _staticsWidgetList = [
    const _StatisticsItemWidget(rideNumber: "24", totalEarn: "11343 \$",),
    const _StatisticsItemWidget(rideNumber: "44", totalEarn: "66 \$",),
    const _StatisticsItemWidget(rideNumber: "66", totalEarn: "9988 \$",),

  ];
}

class _StatisticsItemWidget extends StatelessWidget {
  final String rideNumber;
  final String totalEarn;
  const _StatisticsItemWidget({
    super.key,
    required this.rideNumber,
    required this.totalEarn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Ride"),
              Text(
                rideNumber,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Column(
          children: [
            const Text("Total Earning"),
            Text(
              totalEarn,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
