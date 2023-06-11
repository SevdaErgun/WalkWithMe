import '../controller/home_one_container_controller.dart';
import 'package:get/get.dart';

class HomeOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeOneContainerController());
  }
}
