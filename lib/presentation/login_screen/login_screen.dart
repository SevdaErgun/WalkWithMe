import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/core/utils/validation_functions.dart';
import 'package:walkwithme/widgets/custom_button.dart';
import 'package:walkwithme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
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
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Text(
                            "lbl_walkwithme".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanBlack40,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 8 / 10,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.loginIMG,
                                width: double.infinity,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width *
                                      8.5 /
                                      10,
                                  child: Container(
                                    margin: EdgeInsets.all(35),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          autofocus: true,
                                          controller:
                                              controller.emailController,
                                          hintText: "lbl_email".tr,
                                          variant: TextFormFieldVariant
                                              .OutlineWhiteA700,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value,
                                                    isRequired: true))) {
                                              return "Please enter valid email";
                                            }
                                            return null;
                                          },
                                        ),
                                        CustomTextFormField(
                                          focusNode: FocusNode(),
                                          autofocus: true,
                                          controller:
                                              controller.passwordController,
                                          hintText: "lbl_password".tr,
                                          margin: getMargin(
                                            top: 33,
                                          ),
                                          variant: TextFormFieldVariant
                                              .OutlineWhiteA700,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "Please enter valid password";
                                            }
                                            return null;
                                          },
                                          isObscureText: true,
                                        ),
                                        CustomButton(
                                          onTap: () {
                                            /*Get.toNamed(
                                                AppRoutes.registerScreen);*/
                                            Get.toNamed(
                                                AppRoutes.profileScreen);
                                          },
                                          height: getVerticalSize(
                                            65,
                                          ),
                                          text: "lbl_login_as_a".tr,
                                          margin: getMargin(
                                            top: 45,
                                          ),
                                          shape: ButtonShape.RoundedBorder13,
                                          padding: ButtonPadding.PaddingAll19,
                                          fontStyle:
                                              ButtonFontStyle.RobotoRomanBold32,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 11,
                                            top: 30,
                                            right: 4,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                  color:
                                                      ColorConstant.blueGray700,
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular24,
                                                ),
                                              ),
                                              Spacer(),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      6,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant
                                                        .blueGray700,
                                                    width: getHorizontalSize(
                                                      1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 13,
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "lbl_dog_owner".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRomanRegular24,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "msg_don_t_you_have_an".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular24.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
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
