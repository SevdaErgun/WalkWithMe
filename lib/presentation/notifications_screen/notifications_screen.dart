import 'package:walkwithme/presentation/home_screen/home_screen.dart';

import 'controller/notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';
import 'package:walkwithme/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: SizedBox(
          width: size.width,
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
                      26,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 53,
                        top: 49,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser91,
                            height: getSize(
                              45,
                            ),
                            width: getSize(
                              45,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 2,
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_name_surname".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular32,
                            ),
                          ),
                          Container(
                            height: getSize(
                              7,
                            ),
                            width: getSize(
                              7,
                            ),
                            margin: getMargin(
                              left: 18,
                              top: 21,
                              bottom: 17,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 12,
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_1_hour_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular24Blue300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      574,
                    ),
                    margin: getMargin(
                      left: 111,
                      top: 12,
                      right: 80,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 4,
                        right: 52,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            width: getHorizontalSize(
                              170,
                            ),
                            text: "lbl_confirm".tr,
                            shape: ButtonShape.RoundedBorder20,
                            fontStyle:
                                ButtonFontStyle.RobotoRomanRegular20WhiteA700,
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            width: getHorizontalSize(
                              170,
                            ),
                            text: "lbl_deny".tr,
                            margin: getMargin(
                              left: 31,
                            ),
                            variant: ButtonVariant.OutlineRed400,
                            shape: ButtonShape.RoundedBorder20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 14,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black900,
                      indent: getHorizontalSize(
                        53,
                      ),
                      endIndent: getHorizontalSize(
                        52,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 53,
                        top: 18,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser91,
                            height: getSize(
                              45,
                            ),
                            width: getSize(
                              45,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 2,
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_name_surname".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular32,
                            ),
                          ),
                          Container(
                            height: getSize(
                              7,
                            ),
                            width: getSize(
                              7,
                            ),
                            margin: getMargin(
                              left: 18,
                              top: 19,
                              bottom: 19,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 10,
                              bottom: 6,
                            ),
                            child: Text(
                              "lbl_2_hour_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular24Blue300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      574,
                    ),
                    margin: getMargin(
                      left: 111,
                      top: 12,
                      right: 80,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 4,
                        right: 52,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            width: getHorizontalSize(
                              170,
                            ),
                            text: "lbl_confirm".tr,
                            shape: ButtonShape.RoundedBorder20,
                            fontStyle:
                                ButtonFontStyle.RobotoRomanRegular20WhiteA700,
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            width: getHorizontalSize(
                              170,
                            ),
                            text: "lbl_deny".tr,
                            margin: getMargin(
                              left: 31,
                            ),
                            variant: ButtonVariant.OutlineRed400,
                            shape: ButtonShape.RoundedBorder20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black900,
                      indent: getHorizontalSize(
                        53,
                      ),
                      endIndent: getHorizontalSize(
                        52,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 53,
                        top: 9,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser91,
                            height: getSize(
                              45,
                            ),
                            width: getSize(
                              45,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 2,
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_name_surname".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular32,
                            ),
                          ),
                          Container(
                            height: getSize(
                              7,
                            ),
                            width: getSize(
                              7,
                            ),
                            margin: getMargin(
                              left: 18,
                              top: 18,
                              bottom: 20,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 9,
                              bottom: 7,
                            ),
                            child: Text(
                              "lbl_2_hour_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular24Blue300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      574,
                    ),
                    margin: getMargin(
                      left: 111,
                      top: 12,
                      right: 80,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black900,
                      indent: getHorizontalSize(
                        53,
                      ),
                      endIndent: getHorizontalSize(
                        52,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 53,
                        top: 24,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser91,
                            height: getSize(
                              45,
                            ),
                            width: getSize(
                              45,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 2,
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_name_surname".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular32,
                            ),
                          ),
                          Container(
                            height: getSize(
                              7,
                            ),
                            width: getSize(
                              7,
                            ),
                            margin: getMargin(
                              left: 18,
                              top: 18,
                              bottom: 20,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 9,
                              bottom: 7,
                            ),
                            child: Text(
                              "lbl_2_hour_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular24Blue300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      574,
                    ),
                    margin: getMargin(
                      left: 111,
                      top: 12,
                      right: 80,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 31,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black900,
                      indent: getHorizontalSize(
                        53,
                      ),
                      endIndent: getHorizontalSize(
                        52,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 53,
                        top: 34,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgUser91,
                            height: getSize(
                              45,
                            ),
                            width: getSize(
                              45,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 2,
                              bottom: 4,
                            ),
                            child: Text(
                              "lbl_name_surname".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular32,
                            ),
                          ),
                          Container(
                            height: getSize(
                              7,
                            ),
                            width: getSize(
                              7,
                            ),
                            margin: getMargin(
                              left: 11,
                              top: 23,
                              bottom: 15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray500,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 15,
                              top: 14,
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_2_hour_ago".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular24Blue300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      574,
                    ),
                    margin: getMargin(
                      left: 111,
                      top: 12,
                      right: 80,
                    ),
                    child: Text(
                      "msg_lorem_ipsum_is_simply".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 31,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.black900,
                      indent: getHorizontalSize(
                        53,
                      ),
                      endIndent: getHorizontalSize(
                        52,
                      ),
                    ),
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
        return AppRoutes.homeScreen;
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
      case AppRoutes.homeScreen:
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }
}
