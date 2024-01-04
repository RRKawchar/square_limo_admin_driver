import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_drawer_back_with_title.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/view/widgets/a_drawer_profile_item_widget.dart';
import 'package:square_limo_admin_driver/common/core/extensions/build_context_extensions.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';
import 'package:square_limo_admin_driver/common/core/utils/text_style.dart';

class AHomeDrawerSection extends StatelessWidget {
  const AHomeDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight,
      width: context.screenWidth,
      color: kScaffoldBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Back Button and Profile text with underline

            const ADrawerBackWithTitle(),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [


                  /// Profile image, name and email here
                  const ADrawerProfileItemWidget(),

                  /// icon, title and arrow forward
                  _DrawerItemsWidget(
                    icon: Icons.person,
                    title: "My Profile",
                    onTap: () {},
                  ),
                  const Divider(),
                  _DrawerItemsWidget(
                    icon: Icons.location_on,
                    title: "Address",
                    onTap: () {},
                  ),
                  const Divider(),
                  _DrawerItemsWidget(
                    icon: Icons.help,
                    title: "Help",
                    onTap: () {},
                  ),
                  const Divider(),
                  _DrawerItemsWidget(
                    icon: Icons.info,
                    title: "About",
                    onTap: () {},
                  ),
                  const Divider(),
                  _DrawerItemsWidget(
                    icon: Icons.logout,
                    title: "Log out",
                    onTap: () {},
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItemsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const _DrawerItemsWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Icon(
                icon,
                color: context.primaryColor,
                size: 24,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: AppTextStyle.ralewayStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: onTap,
          icon: Icon(
            Icons.arrow_forward_ios,
            color: context.primaryColor,
          ),
        ),
      ],
    );
  }
}
