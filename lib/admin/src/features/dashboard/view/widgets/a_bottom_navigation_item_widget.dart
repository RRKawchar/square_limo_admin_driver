import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class ABottomNavigationItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;
  final bool isActive;

  const ABottomNavigationItemWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              imagePath,
              height: 24,
              width: 24,
              colorFilter: ColorFilter.mode(
                isActive?context.primaryColor:kGrey,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              title,
              style: context.appTextTheme.bodySmall?.copyWith(
                color:isActive? context.primaryColor:kGrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
