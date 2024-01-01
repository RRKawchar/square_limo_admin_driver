import 'package:flutter/material.dart';
import 'package:square_limo_admin_driver/admin/src/features/home/model/new_request_model.dart';
import 'package:square_limo_admin_driver/common/core/widgets/k_custom_appbar_title_widget.dart';
import 'package:square_limo_admin_driver/common/core/widgets/a_request_card_item_widget.dart';

class ARequestScreen extends StatefulWidget {
  final bool isLeading;
  const ARequestScreen({
    super.key,
    required this.isLeading,
  });

  @override
  State<ARequestScreen> createState() => _ARequestScreenState();
}

class _ARequestScreenState extends State<ARequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: widget.isLeading,
        title:  const KCustomAppbarTitleWidget(title: "Request",)
      ),
      body: ARequestCardItemWidget(
        itemCount: rideDataList.length,
        physics: const PageScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 8,
        ),
      ),
    );
  }
}
