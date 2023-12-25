import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/screens/selection_panel/view/widgets/select_user_button.dart';
import 'package:square_limo_admin_driver/common/screens/selection_panel/view/widgets/select_user_contents_widget.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Select User Contents
            const SelectUserContentsWidget(),
            SizedBox(height: context.screenHeight * 0.05),

            /// Select User Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectUserButton(
                  image: AppAssets.adminIcon,
                  text: "Admin",
                  onPressed: () {
                      onAdmin();
                  },
                ),
                SelectUserButton(
                  image: AppAssets.driverIcon,
                  text: "Driver",
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  void onAdmin(){

    Get.offAllNamed(RouteGenerator.login);
  }
}

