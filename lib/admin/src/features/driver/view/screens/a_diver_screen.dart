import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/driver/model/a_driver_model.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_button.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';

class ADriverScreen extends StatefulWidget {
  const ADriverScreen({super.key});

  @override
  State<ADriverScreen> createState() => _ADriverScreenState();
}

class _ADriverScreenState extends State<ADriverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Driver",
        ),
      ),
      body: ListView.builder(
        itemCount: driverList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 0),
            child: Column(
              children: [
                ListTile(
                    leading: CustomNetworkImage(
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      image: driverList[index].image,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    title: Text(
                      driverList[index].name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    subtitle: Text(driverList[index].email),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: kPrimaryColor,
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: Divider(),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5),
        child: KButton(
          child: Text(
            "Add Driver",
            style: AppTextStyle.ralewayStyle(
              color: kBlack,
              fontSize: 18,
            ),
          ),
          onPressed: () => Get.toNamed(RouteGenerator.driverAddScreen),
        ),
      ),
    );
  }
}
