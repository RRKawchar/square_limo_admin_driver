import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/user/model/user_model.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const KCustomAppbarTitleWidget(
          title: "Users",
        ),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              children: [
                ListTile(
                  leading: CustomNetworkImage(
                    width: 60,
                    height: 60,
                    image:
                    userList[index].image,
                    borderRadius: BorderRadius.circular(5),
                    fit: BoxFit.cover,
                  ),
                  title: Text(userList[index].name,style: AppTextStyle.ralewayStyle(
                    fontWeight: FontWeight.w500
                  ),),
                  subtitle: Text(userList[index].email,style: AppTextStyle.interStyle(
                    color: const Color(0xFF868686),
                    fontWeight: FontWeight.w400
                  ),),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Divider(),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
