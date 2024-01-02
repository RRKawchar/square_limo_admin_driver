import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/choice_model.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/routes/routes.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class HomePanelCardItemWidget extends StatelessWidget {
  const HomePanelCardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.68,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        children: List.generate(
          choiceList.length,
          (index) => GestureDetector(
            onTap: () => _navigateToAnotherScreen(index),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    choiceList[index].icon,
                    height: 74,
                    width: 74,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    choiceList[index].title,
                    style: AppTextStyle.ralewayStyle(
                      fontSize: 16,
                      color: _setTextColor(index),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _setTextColor(int index) {
    if (index == 0) {
      return kCompleteColor;
    } else if (index == 1) {
      return kPendingColor;
    } else if (index == 2) {
      return kProgressColor;
    } else if (index == 3) {
      return kCancelColor;
    } else {
      return kWhite;
    }
  }

  void _navigateToAnotherScreen(int index) {
    switch (index) {
      case 0:
        Get.toNamed(RouteGenerator.aRideCompleteScreen);
        break;

      case 1:
        Get.toNamed(RouteGenerator.aPendingScreen);
        break;

      case 2:
        Get.toNamed(RouteGenerator.aInProgressScreen);
        break;

      case 3:
        Get.toNamed(RouteGenerator.aRideCancelScreen);
        break;
      case 4:
        Get.toNamed(RouteGenerator.aUserScreen);
        break;
      case 5:
        Get.toNamed(RouteGenerator.aDriverScreen);
        break;

      default:
        break;
    }
  }
}
