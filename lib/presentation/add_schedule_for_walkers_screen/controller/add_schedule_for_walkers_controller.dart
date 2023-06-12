import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/add_schedule_for_walkers_screen/models/add_schedule_for_walkers_model.dart';

class AddScheduleForWalkersController extends GetxController {
  Rx<AddScheduleForWalkersModel> addScheduleForWalkersModelObj =
      AddScheduleForWalkersModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
