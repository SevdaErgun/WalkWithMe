import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/update_profile_screen/models/update_profile_model.dart';
import 'package:flutter/material.dart';

class UpdateProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<UpdateProfileModel> updateProfileModelObj = UpdateProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    surnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
