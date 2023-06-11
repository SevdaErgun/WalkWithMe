import '../controller/add_dog_controller.dart';
import 'package:get/get.dart';

class AddDogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddDogController());
  }
}
