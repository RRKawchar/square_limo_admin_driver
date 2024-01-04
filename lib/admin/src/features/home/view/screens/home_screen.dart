import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_drawer_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_statistics_section.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_title_with_view_all_btn.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_top_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/home_panel_card_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view_model/a_home_view_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/widgets/a_request_card_item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: const AHomeDrawerSection(),
      body: SafeArea(
        child: Column(
          children: [
            /// Top image and name
            AHomeScreenTopItemWidget(
              onTap: () {
                _scaffoldKey.currentState?.openDrawer();
              },
            ),

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
                        onTap: () =>
                            Get.toNamed(RouteGenerator.statisticsScreen),
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
                        onTap: () => Get.toNamed(RouteGenerator.aRequestScreen),
                      ),

                      /// Home New Request items
                      const ARequestCardItemWidget(
                        itemCount: 1,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.only(bottom: 0),
                      ),
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
