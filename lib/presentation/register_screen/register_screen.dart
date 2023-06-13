import 'package:flutter/gestures.dart';

import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/core/utils/validation_functions.dart';
import 'package:walkwithme/widgets/custom_button.dart';
import 'package:walkwithme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray200,
        body: Form(
          key: _formKey,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.registerIMG,
                            width: MediaQuery.sizeOf(context).width * 6 / 10,
                            margin: EdgeInsets.only(top: 25),
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: false,
                            controller: controller.nameController,
                            hintText: "lbl_name".tr,
                            margin: getMargin(
                                left: MediaQuery.sizeOf(context).width * 1 / 10,
                                right:
                                    MediaQuery.sizeOf(context).width * 1 / 10),
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            },
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: false,
                            controller: controller.surnameController,
                            hintText: "lbl_surname".tr,
                            margin: getMargin(
                                left: MediaQuery.sizeOf(context).width * 1 / 10,
                                top: 33,
                                right:
                                    MediaQuery.sizeOf(context).width * 1 / 10),
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            },
                          ),
                          CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: false,
                            controller: controller.emailController,
                            hintText: "lbl_email".tr,
                            margin: getMargin(
                                left: MediaQuery.sizeOf(context).width * 1 / 10,
                                top: 33,
                                right:
                                    MediaQuery.sizeOf(context).width * 1 / 10),
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
                            focusNode: FocusNode(),
                            autofocus: false,
                            controller: controller.passwordController,
                            hintText: "lbl_password".tr,
                            margin: getMargin(
                                left: MediaQuery.sizeOf(context).width * 1 / 10,
                                top: 33,
                                right:
                                    MediaQuery.sizeOf(context).width * 1 / 10),
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
                              65,
                            ),
                            text: "lbl_register_as_a".tr,
                            margin: getMargin(
                                left: MediaQuery.sizeOf(context).width * 1 / 10,
                                top: 30,
                                right:
                                    MediaQuery.sizeOf(context).width * 1 / 10),
                            shape: ButtonShape.RoundedBorder13,
                            padding: ButtonPadding.PaddingAll19,
                            fontStyle: ButtonFontStyle.RobotoRomanBold32,
                          ),
                          Padding(
                            padding: getPadding(
                              left: MediaQuery.sizeOf(context).width * 1 / 10,
                              top: 30,
                              right: MediaQuery.sizeOf(context).width * 1 / 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.setWalker();
                                  },
                                  child: Obx(() => Row(
                                        children: [
                                          Container(
                                            height: getSize(
                                              29,
                                            ),
                                            width: getSize(
                                              29,
                                            ),
                                            margin: getMargin(
                                              bottom: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: controller
                                                          .roleStatus.value ==
                                                      'Walker'
                                                  ? ColorConstant.blueGray700
                                                  : null,
                                              border: controller
                                                          .roleStatus.value !=
                                                      'Walker'
                                                  ? Border.all(
                                                      color: ColorConstant
                                                          .blueGray700,
                                                      width: getHorizontalSize(
                                                        1,
                                                      ),
                                                    )
                                                  : null,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  6,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 13,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "lbl_walker".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular24,
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    controller.setWalker();
                                  },
                                  child: Obx(() => Row(
                                        children: [
                                          Container(
                                            height: getSize(
                                              29,
                                            ),
                                            width: getSize(
                                              29,
                                            ),
                                            margin: getMargin(
                                              bottom: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: controller
                                                          .roleStatus.value ==
                                                      'Dog Owner'
                                                  ? ColorConstant.blueGray700
                                                  : null,
                                              border: controller
                                                          .roleStatus.value !=
                                                      'Dog Owner'
                                                  ? Border.all(
                                                      color: ColorConstant
                                                          .blueGray700,
                                                      width: getHorizontalSize(
                                                        1,
                                                      ),
                                                    )
                                                  : null,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  6,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 13,
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "lbl_dog_owner".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRobotoRomanRegular24,
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              // child: Text(
                              //   "msg_return_to_login".tr,
                              //   overflow: TextOverflow.ellipsis,
                              //   textAlign: TextAlign.left,
                              //   style: AppStyle.txtRobotoRomanRegular24,
                              // ),
                              child: RichText(
                                text: TextSpan(
                                  style:
                                      AppStyle.txtRobotoRomanRegular24.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "msg_return_to_login".tr,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => Get.toNamed(
                                              AppRoutes.loginScreen)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
