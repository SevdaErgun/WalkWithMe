import 'package:flutter/gestures.dart';
import 'package:walkwithme/services/db/customer/customer_database.dart';
import 'package:walkwithme/services/db/customer/customer_database.dart';
import '../../services/db/database_helper.dart';
import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/core/utils/validation_functions.dart';
import 'package:walkwithme/widgets/custom_button.dart';
import 'package:walkwithme/widgets/custom_text_form_field.dart';

class RegisterScreen extends GetWidget<RegisterController> {
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
                        top: MediaQuery.sizeOf(context).height * 0.5 / 10),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.sizeOf(context).height * 0.5 / 10),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                controller: controller.nameController,
                                hintText: "lbl_name".tr,
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
                                  top: 24,
                                ),
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
                                  top: 24,
                                ),
                                textInputType: TextInputType.emailAddress,
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
                                autofocus: false,
                                controller: controller.passwordController,
                                hintText: "lbl_password".tr,
                                margin: getMargin(
                                  top: 24,
                                ),
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
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 24),
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
                                                  color: controller.roleStatus
                                                              .value ==
                                                          'Walker'
                                                      ? ColorConstant
                                                          .blueGray700
                                                      : null,
                                                  border: controller.roleStatus
                                                              .value !=
                                                          'Walker'
                                                      ? Border.all(
                                                          color: ColorConstant
                                                              .blueGray700,
                                                          width:
                                                              getHorizontalSize(
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                        controller.setDogOwner();
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
                                                  color: controller.roleStatus
                                                              .value ==
                                                          'Dog Owner'
                                                      ? ColorConstant
                                                          .blueGray700
                                                      : null,
                                                  border: controller.roleStatus
                                                              .value !=
                                                          'Dog Owner'
                                                      ? Border.all(
                                                          color: ColorConstant
                                                              .blueGray700,
                                                          width:
                                                              getHorizontalSize(
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                              CustomButton(
                                height: getVerticalSize(
                                  65,
                                ),
                                text: "lbl_register_as_a".tr,
                                shape: ButtonShape.RoundedBorder13,
                                padding: ButtonPadding.PaddingAll19,
                                fontStyle: ButtonFontStyle.RobotoRomanBold32,
                                onTap: () => {_insert()},
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 24),
                                child: RichText(
                                  text: TextSpan(
                                    style: AppStyle.txtRobotoRomanRegular24
                                        .copyWith(
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
                            ],
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _insert() async {
    // row to insert
    Map<String, dynamic> row = {
      CustomerDatabase.columnName: controller.nameController.text,
      CustomerDatabase.columnSurname: controller.surnameController.text,
      CustomerDatabase.columnEmail: controller.emailController.text,
      CustomerDatabase.columnPassword: controller.passwordController.text,
      CustomerDatabase.columnRole: controller.roleStatus.toString(),
    };
    final id = await customerDatabase.insert(row);
    Get.toNamed(AppRoutes.loginScreen);
  }

  void _query() async {
    final allRows = await customerDatabase.queryAllRows();
    debugPrint('query all rows:');
    for (final row in allRows) {
      debugPrint(row.toString());
    }
  }

  void _update() async {
    // row to update
    Map<String, dynamic> row = {
      CustomerDatabase.columnId: 1,
      CustomerDatabase.columnName: 'Mary',
    };
    final rowsAffected = await customerDatabase.update(row);
    debugPrint('updated $rowsAffected row(s)');
  }

  void _delete() async {
    // Assuming that the number of rows is the id for the last row.
    final id = await customerDatabase.queryRowCount();
    final rowsDeleted = await customerDatabase.delete(id);
    debugPrint('deleted $rowsDeleted row(s): row $id');
  }
}
