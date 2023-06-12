import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/dogs_screen/models/dogs_model.dart';

class DogsController extends GetxController {
  Rx<DogsModel> dogsModelObj = DogsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
