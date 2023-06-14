import 'package:walkwithme/presentation/home_screen/home_screen.dart';

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

  final List<Map<String, dynamic>> row = Get.arguments['row'];

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
              child: Icon(
                Icons.verified,
                color: Colors.green.shade400,
                size: 32,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              margin: getMargin(right: 26),
              child: GestureDetector(
                onTap: () => {
                  Get.toNamed(AppRoutes.profileScreen, arguments: {'row': row})
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
                  controller: controller.nameController,
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
                  controller: controller.surnameController,
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
                  controller: controller.emailController,
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
                  controller: controller.passwordController,
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
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
}
