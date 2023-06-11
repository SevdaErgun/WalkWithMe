import '../controller/add_schedule_for_walkers_controller.dart';
import 'package:get/get.dart';

class AddScheduleForWalkersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddScheduleForWalkersController());
  }
}
