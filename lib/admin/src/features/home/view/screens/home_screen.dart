import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_home_top_item_widget.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/home_panel_card_item_widget.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      HomePanelCardItemWidget(),

                      const SizedBox(height: 10),


                      /// Test Widget
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return const Text("data");
                            }),
                      )
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
