import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view/widgets/a_bottom_navigation_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view_model/a_dashboard_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class ADashboardBottomNavBar extends StatelessWidget {
  final ADashboardViewModel dashboardViewModel;
  const ADashboardBottomNavBar({super.key, required this.dashboardViewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 64,
      decoration: BoxDecoration(
        color: kBlack,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ABottomNavigationItemWidget(
            imagePath: AppAssets.homeIcon,
            title: "Home",
            isActive: dashboardViewModel.currentIndex==0,
            onTap:()=> dashboardViewModel.updateCurrentIndex(0),
          ),
          ABottomNavigationItemWidget(
            imagePath: AppAssets.requestIcon,
            title: "Request",
            isActive: dashboardViewModel.currentIndex==1,
            onTap:()=> dashboardViewModel.updateCurrentIndex(1),
          ),
          SizedBox(width: context.screenWidth * 0.1),
          ABottomNavigationItemWidget(
            imagePath: AppAssets.notificationIcon,
            title: "Notification",
            isActive: dashboardViewModel.currentIndex==2,
            onTap:()=> dashboardViewModel.updateCurrentIndex(2),
          ),
          ABottomNavigationItemWidget(
            imagePath: AppAssets.statisticsIcon,
            title: "Statistics",
            isActive: dashboardViewModel.currentIndex==3,
            onTap:()=> dashboardViewModel.updateCurrentIndex(3),
          ),
        ],
      ),
    );
  }
}
