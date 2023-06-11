import '../controller/dogs_controller.dart';
import 'package:get/get.dart';

class DogsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DogsController());
  }
}
