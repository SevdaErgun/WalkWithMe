import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/notifications_one_screen/models/notifications_one_model.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';

class NotificationsOneController extends GetxController {
  Rx<NotificationsOneModel> notificationsOneModelObj =
      NotificationsOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
