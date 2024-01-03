import 'package:square_limo_admin_driver/common/core/enums/app_enums.dart';

class ANotificationModel {
  final String title;
  final NotificationType notificationType;

  ANotificationModel({
    required this.title,
    required this.notificationType,
  });
}

final List<ANotificationModel> notificationList = [
  ANotificationModel(
    title: "Your have a new booking request.",
    notificationType: NotificationType.user,
  ),
  ANotificationModel(
    title: "A ride has been completed by Richard.",
    notificationType: NotificationType.driver,
  ),
];
