import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_colors.dart';

class ADashboardScreen extends StatefulWidget {
  const ADashboardScreen({super.key});

  @override
  State<ADashboardScreen> createState() => _ADashboardScreenState();
}

class _ADashboardScreenState extends State<ADashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
          child: Text("Admin Dashboard"),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 64,
        decoration: BoxDecoration(
          color: kBlack,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
