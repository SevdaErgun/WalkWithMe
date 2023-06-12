import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/add_dog_screen/models/add_dog_model.dart';

class AddDogController extends GetxController {
  Rx<AddDogModel> addDogModelObj = AddDogModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
