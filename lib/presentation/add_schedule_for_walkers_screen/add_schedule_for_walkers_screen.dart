import 'controller/add_schedule_for_walkers_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AddScheduleForWalkersScreen
    extends GetWidget<AddScheduleForWalkersController> {
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
                left: 45,
                top: 40,
                right: 30,
              ),
            ),
            AppbarSubtitle1(
              text: "lbl_cancel".tr,
              margin: getMargin(
                left: 37,
                top: 40,
                right: 75,
              ),
            ),
          ],
          styleType: Style.bgShadowBlack9003f,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 146,
            ),
            child: Container(
              margin: getMargin(
                left: 88,
                right: 75,
                bottom: 5,
              ),
              decoration: AppDecoration.outlineBlack9003f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder60,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      261,
                    ),
                    width: getHorizontalSize(
                      603,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              158,
                            ),
                            width: getHorizontalSize(
                              603,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  60,
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
                                  ColorConstant.deepOrangeA40001,
                                  ColorConstant.orange30001,
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
                                235,
                              ),
                              width: getSize(
                                235,
                              ),
                              padding: getPadding(
                                left: 46,
                                top: 52,
                                right: 46,
                                bottom: 52,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder117,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDogwalking1,
                                    height: getSize(
                                      130,
                                    ),
                                    width: getSize(
                                      130,
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      502,
                    ),
                    margin: getMargin(
                      top: 62,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 5,
                      right: 15,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtOutlineBluegray700.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder13,
                    ),
                    child: Text(
                      "lbl_title".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 44,
                      top: 33,
                      right: 57,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 15,
                      right: 19,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBluegray700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 11,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_select_a_dog".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular24,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgDog1,
                          height: getSize(
                            46,
                          ),
                          width: getSize(
                            46,
                          ),
                          margin: getMargin(
                            top: 1,
                            right: 27,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      502,
                    ),
                    margin: getMargin(
                      top: 33,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 5,
                      right: 15,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtOutlineBluegray700.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder13,
                    ),
                    child: Text(
                      "lbl_start_date".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      502,
                    ),
                    margin: getMargin(
                      top: 33,
                      bottom: 92,
                    ),
                    padding: getPadding(
                      left: 15,
                      top: 6,
                      right: 15,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.txtOutlineBluegray700.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder13,
                    ),
                    child: Text(
                      "lbl_finish_date".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
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
