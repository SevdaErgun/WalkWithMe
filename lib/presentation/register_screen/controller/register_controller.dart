import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/register_screen/models/register_model.dart';
import 'package:flutter/material.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegisterModel> registerModelObj = RegisterModel().obs;

  var roleStatus = ''.obs;

  @override
  void onReady() {
    super.onReady();
  }

  void setWalker() {
    roleStatus.value = roleStatus.value == 'Walker' ? 'Dog Owner' : 'Walker';
  }

  void setDogOwner() {
    roleStatus.value = roleStatus.value == 'Dog Owner' ? 'Walker' : 'Dog Owner';
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
