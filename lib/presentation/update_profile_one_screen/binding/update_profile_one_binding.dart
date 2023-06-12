import '../controller/update_profile_one_controller.dart';
import 'package:get/get.dart';

class UpdateProfileOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdateProfileOneController());
  }
}
