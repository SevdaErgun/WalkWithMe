import 'controller/update_profile_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/core/utils/validation_functions.dart';
import 'package:walkwithme/presentation/home_one_page/home_one_page.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';
import 'package:walkwithme/widgets/custom_button.dart';
import 'package:walkwithme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class UpdateProfileOneScreen extends GetWidget<UpdateProfileOneController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray200,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      29,
                    ),
                    width: getHorizontalSize(
                      766,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray200,
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black9003f,
                          spreadRadius: getHorizontalSize(
                            2,
                          ),
                          blurRadius: getHorizontalSize(
                            2,
                          ),
                          offset: Offset(
                            0,
                            10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRefresh1,
                    height: getSize(
                      212,
                    ),
                    width: getSize(
                      212,
                    ),
                    margin: getMargin(
                      top: 72,
                    ),
                  ),
                  CustomTextFormField(
                    width: getHorizontalSize(
                      502,
                    ),
                    focusNode: FocusNode(),
                    autofocus: true,
                    controller: controller.nameController,
                    hintText: "lbl_name".tr,
                    margin: getMargin(
                      top: 72,
                    ),
                    validator: (value) {
                      if (!isText(value)) {
                        return "Please enter valid text";
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    width: getHorizontalSize(
                      502,
                    ),
                    focusNode: FocusNode(),
                    autofocus: true,
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
                    width: getHorizontalSize(
                      502,
                    ),
                    focusNode: FocusNode(),
                    autofocus: true,
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
                    width: getHorizontalSize(
                      502,
                    ),
                    focusNode: FocusNode(),
                    autofocus: true,
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
                  CustomButton(
                    height: getVerticalSize(
                      77,
                    ),
                    width: getHorizontalSize(
                      502,
                    ),
                    text: "lbl_update".tr,
                    margin: getMargin(
                      top: 94,
                    ),
                    variant: ButtonVariant.FillBlue30001,
                    shape: ButtonShape.RoundedBorder13,
                    padding: ButtonPadding.PaddingAll19,
                    fontStyle: ButtonFontStyle.RobotoRomanBold32,
                  ),
                ],
              ),
            ),
          ),
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
      case BottomBarEnum.Home11:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Plus51:
        return "/";
      case BottomBarEnum.User81:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      default:
        return DefaultWidget();
    }
  }
}
