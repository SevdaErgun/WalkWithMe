import '../controller/notifications_one_controller.dart';
import 'package:get/get.dart';

class NotificationsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsOneController());
  }
}
