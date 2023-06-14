import 'package:flutter/cupertino.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/add_dog_screen/models/add_dog_model.dart';

class AddDogController extends GetxController {
  TextEditingController dogNameController = TextEditingController();

  TextEditingController dogGenderController = TextEditingController();

  TextEditingController dogBreedController = TextEditingController();

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
