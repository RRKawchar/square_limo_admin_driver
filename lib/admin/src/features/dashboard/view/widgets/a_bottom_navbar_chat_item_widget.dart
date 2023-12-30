import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class ABottomNavBarChatItemWidget extends StatelessWidget {
  const ABottomNavBarChatItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(RouteGenerator.aChatScreen),
      child: Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppAssets.chatIcon,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(height: 2),
                Text(
                  "Chat",
                  style: context.appTextTheme.bodySmall?.copyWith(
                    color: kBlackLight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
