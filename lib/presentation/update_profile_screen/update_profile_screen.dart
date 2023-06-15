import 'package:walkwithme/presentation/home_screen/home_screen.dart';
import 'package:walkwithme/globals.dart' as globals;
import 'package:walkwithme/services/db/customer/customer_database.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/update_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/core/utils/validation_functions.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';
import 'package:walkwithme/widgets/custom_button.dart';
import 'package:walkwithme/widgets/custom_text_form_field.dart';

class UpdateProfileScreen extends GetWidget<UpdateProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.projectBackground,
        appBar: CustomAppBar(
          height: 70,
          title: AppbarTitle(
            text: "walkwithme".tr,
            margin: getMargin(
              left: 26,
            ),
          ),
          actions: [
            Container(
              child: GestureDetector(
                onTap: () => {
                  updateProfile()
                },
                child: Icon(
                  Icons.verified,
                  color: Colors.green.shade400,
                  size: 32,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              margin: getMargin(right: 26),
              child: GestureDetector(
                onTap: () => {
                  Get.toNamed(AppRoutes.profileScreen)
                },
                child: Icon(
                  Icons.cancel_outlined,
                  color: ColorConstant.blackText,
                  size: 32,
                ),
              ),
            ),
          ],
          styleType: Style.bgShadowBlack9003f,
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
              child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRefresh1,
                  width: MediaQuery.sizeOf(context).width * 3.5 / 10,
                  margin: getMargin(
                    top: 72,
                  ),
                ),
                CustomTextFormField(
                  width: MediaQuery.sizeOf(context).width * 8 / 10,
                  focusNode: FocusNode(),
                  autofocus: false,
                  controller: controller.nameController = TextEditingController(text: globals.user["name"]),
                  hintText: "lbl_name".tr,
                  margin: getMargin(
                    top: 45,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: MediaQuery.sizeOf(context).width * 8 / 10,
                  focusNode: FocusNode(),
                  autofocus: false,
                  controller: controller.surnameController = TextEditingController(text: globals.user["surname"]),
                  hintText: "lbl_surname".tr,
                  margin: getMargin(
                    top: 33,
                  ),
                  validator: (value) {
                    if (!isText(value)) {
                      return "Please enter valid text";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: MediaQuery.sizeOf(context).width * 8 / 10,
                  focusNode: FocusNode(),
                  autofocus: false,
                  controller: controller.emailController = TextEditingController(text: globals.user["email"]),
                  hintText: "lbl_email".tr,
                  margin: getMargin(
                    top: 33,
                  ),
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: MediaQuery.sizeOf(context).width * 8 / 10,
                  focusNode: FocusNode(),
                  autofocus: false,
                  controller: controller.passwordController = TextEditingController(text: globals.user["password"]),
                  hintText: "lbl_password".tr,
                  margin: getMargin(
                    top: 33,
                  ),
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  isObscureText: true,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreen;
      case BottomBarEnum.Plus:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreen:
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }

  void updateProfile() {
    Map<String, dynamic> row = {
      CustomerDatabase.columnId : globals.user["id"],
      CustomerDatabase.columnName: controller.nameController.text,
      CustomerDatabase.columnSurname: controller.surnameController.text,
      CustomerDatabase.columnEmail: controller.emailController.text,
      CustomerDatabase.columnPassword: controller.passwordController.text,
      CustomerDatabase.columnRole : globals.user["role"]
    };

  CustomerDatabase.update(row);

  Get.toNamed(AppRoutes.profileScreen);

  globals.user = row;

  }
}
