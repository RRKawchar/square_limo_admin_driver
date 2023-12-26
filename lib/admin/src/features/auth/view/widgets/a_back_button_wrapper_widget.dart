import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class ABackButtonWrapperWidget extends StatelessWidget {
  final Widget content;
  const ABackButtonWrapperWidget({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            SizedBox(
              height: context.screenHeight,
              child: content,
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: IconButton(
                  onPressed:()=>Get.back(),
                  icon: Icon(
                    Icons.arrow_back,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
