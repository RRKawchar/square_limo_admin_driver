import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/statistics/view/widgets/statistics_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/statistics/view/widgets/statistics_item_widget_2.dart';
import 'package:square_limo_admin_driver/admin/src/features/statistics/view/widgets/statistics_popup_menu_button.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';



class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({
    super.key,
  });

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final homeViewModel = Get.find<AHomeViewModel>();
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Statistics",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Row(
                children: [
                  Expanded(
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
                              pageController.animateToPage(
                                  homeViewModel.currentIndex,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.ease);
                            },
                            child: Obx(
                              () => Container(
                                alignment: Alignment.center,
                                height: 27,
                                width: context.screenWidth * 0.25,
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
                                      offset: const Offset(1, -2),
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
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                 const StatisticsPopupMenuButton()
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: SizedBox(
                height: context.screenHeight * 0.70,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: _staticsWidgetList.length,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return _staticsWidgetList[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<Widget> _staticsWidgetList = [
     const StatisticsItemWidget(
       totalRide: "24",
       totalEarning: "5677",
       averageEarning: "875",
     ),
    const StatisticsItemWidget2(
      title: "Total",
      number: '22',
    ),
    const StatisticsItemWidget2(
      title: "Total",
      number: '11',
    ),
  ];
}
