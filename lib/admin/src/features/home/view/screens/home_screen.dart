import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_statistics_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_title_with_view_all_btn.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_top_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/home_new_request_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/home_panel_card_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  final _homeViewModel = Get.find<AHomeViewModel>();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// Top image and name
            const AHomeScreenTopItemWidget(),

            SizedBox(
              height: context.screenHeight * 0.82,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      /// Ride Status widget
                      const HomePanelCardItemWidget(),



                      /// Statistics view all
                      AHomeTitleWithViewAllBtn(
                        title: "Statistics",
                        onTap: () {},
                      ),
                      const SizedBox(height: 5),

                      /// Statistics Section
                      AHomeStatisticsSection(
                        homeViewModel: _homeViewModel,
                        pageController: pageController,
                      ),


                      /// New Request title with  View all Button
                      AHomeTitleWithViewAllBtn(
                        title: "New Request",
                        onTap: () {},
                      ),


                      /// Home New Request item and Pending Item Data
                       const HomeNewRequestSection()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
