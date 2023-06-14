import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  var roleStatus = ''.obs;

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

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
    emailController.dispose();
    passwordController.dispose();
  }
}
