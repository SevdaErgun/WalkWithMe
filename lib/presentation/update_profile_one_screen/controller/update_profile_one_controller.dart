import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/update_profile_one_screen/models/update_profile_one_model.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class UpdateProfileOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<UpdateProfileOneModel> updateProfileOneModelObj =
      UpdateProfileOneModel().obs;

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