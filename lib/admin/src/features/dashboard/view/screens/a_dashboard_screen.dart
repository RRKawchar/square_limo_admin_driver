import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view/widgets/a_bottom_navbar_chat_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view/widgets/a_dashboard_bottom_navbar.dart';
import 'package:square_limo_admin_driver/admin/src/features/dashboard/view_model/a_dashboard_view_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/screens/home_screen.dart';
import 'package:square_limo_admin_driver/admin/src/features/request/view/screens/a_request_screen.dart';

class ADashboardScreen extends StatefulWidget {
  const ADashboardScreen({
    super.key,
  });

  @override
  State<ADashboardScreen> createState() => _ADashboardScreenState();
}

class _ADashboardScreenState extends State<ADashboardScreen> {
  final ADashboardViewModel dashboardViewModel =
      Get.find<ADashboardViewModel>();

  final pages = [
    const HomeScreen(),
     const ARequestScreen(
        isLeading: false,
    ),
    const Center(
      child: Text("Notification"),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          body: SafeArea(
            child: pages[dashboardViewModel.currentIndex],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const ABottomNavBarChatItemWidget(),
          bottomNavigationBar: ADashboardBottomNavBar(
            dashboardViewModel: dashboardViewModel,
          ),
        );
      },
    );
  }
}
