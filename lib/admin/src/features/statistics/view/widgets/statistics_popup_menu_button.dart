import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class StatisticsPopupMenuButton extends StatelessWidget {
  const StatisticsPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton<String>(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      constraints: const BoxConstraints(
        minHeight: 187,
        minWidth: 200,
        maxHeight: 190,
        maxWidth: 210,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: "1",
          child: SizedBox(
            height: 50,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Weekly",
                  style: AppTextStyle.ralewayStyle(fontSize: 16),
                ),
                const Divider(),
              ],
            ),
          ),
        ),

        PopupMenuItem(
          value: "2",
          child: SizedBox(
            height: 50,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monthly",
                  style: AppTextStyle.ralewayStyle(fontSize: 16),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          value: "3",
          child: SizedBox(
            height: 50,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yearly",
                  style: AppTextStyle.ralewayStyle(fontSize: 16),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
        // popupmenu item 2
      ],
      icon: SvgPicture.asset(
        AppAssets.filterIcon,
        height: 26,
        width: 26,
      ),
      offset: const Offset(0, 50),
      color: const Color(0xFF121024),
      elevation: 1,
    );
  }
}
