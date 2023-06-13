import '../../widgets/custom_text_form_field.dart';
import 'controller/add_dog_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AddDogScreen extends GetWidget<AddDogController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        appBar: CustomAppBar(
          height: getVerticalSize(
            95,
          ),
          title: AppbarTitle(
            text: "lbl_walkwithme2".tr,
            margin: getMargin(
              left: 40,
            ),
          ),
          actions: [
            AppbarSubtitle2(
              text: "lbl_confirm".tr,
              margin: getMargin(
                top: 35,
                right: 15,
              ),
            ),
            AppbarSubtitle1(
              text: "lbl_cancel".tr,
              margin: getMargin(
                left: 10,
                top: 35,
                right: 30,
              ),
            ),
          ],
          styleType: Style.bgShadowBlack9003f,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                top: 85,
                left: MediaQuery.sizeOf(context).width * 1 / 10,
                right: MediaQuery.sizeOf(context).width * 1 / 10,
              ),
              decoration: AppDecoration.outlineBlack9003f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder60,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 8 / 10,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              125,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  25,
                                ),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(
                                  0,
                                  1,
                                ),
                                end: Alignment(
                                  1,
                                  1,
                                ),
                                colors: [
                                  ColorConstant.deepOrangeA400,
                                  ColorConstant.navigationBar,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.all(0),
                            color: ColorConstant.blue30060,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: ColorConstant.black900,
                                width: getHorizontalSize(
                                  6,
                                ),
                              ),
                              borderRadius: BorderRadiusStyle.roundedBorder117,
                            ),
                            child: Container(
                              height: getSize(
                                130,
                              ),
                              width: getSize(
                                130,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder117,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDog1,
                                    height: getSize(
                                      60,
                                    ),
                                    width: getSize(
                                      60,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    // controller: controller.surnameController,
                    hintText: "lbl_dog_name".tr,
                    margin: getMargin(left: 30, top: 60, right: 30),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    // controller: controller.surnameController,
                    hintText: "lbl_dog_gender".tr,
                    margin: getMargin(left: 30, top: 33, right: 30),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    // controller: controller.surnameController,
                    hintText: "lbl_dog_breed".tr,
                    margin: getMargin(left: 30, top: 33, right: 30, bottom: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
