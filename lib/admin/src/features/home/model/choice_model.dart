
import 'package:flutter_svg/flutter_svg.dart';
import 'package:square_limo_admin_driver/common/core/utils/app_assets.dart';

class ChoiceModel {
  final String icon;
  final String title;

  ChoiceModel({
    required this.icon,
    required this.title,
  });
}


final List<ChoiceModel> choiceList=[
  ChoiceModel(icon: AppAssets.completeIcon, title: "Ride Complete"),
  ChoiceModel(icon: AppAssets.pendingIcon, title: "Ride Pending"),
  ChoiceModel(icon: AppAssets.inProgressIcon, title: "Ride In-Progress"),
  ChoiceModel(icon: AppAssets.cancelIcon, title: "Ride Cancel"),
  ChoiceModel(icon: AppAssets.userIcon, title: "User"),
  ChoiceModel(icon: AppAssets.dashboardDriverIcon, title: "Driver"),

];
