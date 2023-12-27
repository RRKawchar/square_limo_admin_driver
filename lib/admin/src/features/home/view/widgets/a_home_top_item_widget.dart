import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';
import 'package:square_limo_admin_driver/common/core/widgets/custom_network_image.dart';

class AHomeScreenTopItemWidget extends StatelessWidget {
  const AHomeScreenTopItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: context.screenHeight*0.05,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              AppAssets.drawerIcon,
              height: 20,
              width: 40,
            ),
            const SizedBox(width: 10,),
            CustomNetworkImage(
              image:
              'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnN8ZW58MHx8MHx8fDA%3D',
              borderRadius: BorderRadius.circular(50),
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 5,),
            Text("Welcome, RRK",style: AppTextStyle.ralewayStyle(fontSize: 18,fontWeight: FontWeight.normal),)
          ],
        ),
      ),
    );
  }
}
