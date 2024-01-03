import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/notification/model/a_notification_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';

class ANotificationScreen extends StatefulWidget {
  const ANotificationScreen({super.key});

  @override
  State<ANotificationScreen> createState() => _ANotificationScreenState();
}

class _ANotificationScreenState extends State<ANotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Notifications",
        ),
      ),
      body: ListView.builder(
        itemCount: notificationList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Image.asset(
                  AppAssets.appLogo,
                  height: 38,
                  width: 38,
                  fit: BoxFit.cover,
                ),
                title: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: notificationList[index].title,
                      ),
                      TextSpan(
                        text: notificationList[index].title ==
                                "Your have a new booking request."
                            ? " See Request"
                            : "               See Details",
                        style: AppTextStyle.ralewayStyle(
                          color: context.primaryColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            notificationList[index].title ==
                                    "Your have a new booking request."
                                ? Get.toNamed(RouteGenerator.aRequestScreen)
                                : Get.toNamed(
                                    RouteGenerator.aRideCompleteScreen);
                            // Single tapped.
                          },
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Divider(),
              ),
            ],
          );
        },
      ),
    );
  }
}
