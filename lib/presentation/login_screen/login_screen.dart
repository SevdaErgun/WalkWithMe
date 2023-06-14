import 'package:flutter/gestures.dart';
import 'package:walkwithme/services/db/customer/customer_database.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/core/utils/validation_functions.dart';
import 'package:walkwithme/widgets/custom_button.dart';
import 'package:walkwithme/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  final customerDatabase = CustomerDatabase();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.projectBackground,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CustomImageView(
                    imagePath: ImageConstant.loginIMG,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(
                        top: MediaQuery.sizeOf(context).height * 1 / 10),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.sizeOf(context).height * 1 / 10),
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width * 0.5 / 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstant.cardBackground,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.sizeOf(context).width * 0.5 / 10),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 24),
                              child: Text(
                                "lbl_walkwithme".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtDancingScript32,
                              ),
                            ),
                            CustomTextFormField(
                              focusNode: FocusNode(),
                              autofocus: false,
                              controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              variant: TextFormFieldVariant.OutlineWhiteA500,
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
                                top: 24,
                              ),
                              variant: TextFormFieldVariant.OutlineWhiteA500,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
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
                                login();
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
                              fontStyle: ButtonFontStyle.RobotoRomanBold32,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 24),
                              child: RichText(
                                text: TextSpan(
                                  style:
                                      AppStyle.txtRobotoRomanRegular24.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "msg_don_t_you_have_an".tr,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => Get.toNamed(
                                              AppRoutes.registerScreen)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login() async {
  var row = await customerDatabase.getById(controller.emailController.text,controller.passwordController.text);
  if(row.isNotEmpty ){
    Get.toNamed(AppRoutes.homeScreen, arguments: {
      'row' : row
    });
  }
  else
   print( "Wrong password or email.");
  }

}
