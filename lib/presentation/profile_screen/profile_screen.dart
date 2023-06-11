import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/home_one_page/home_one_page.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
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
            Padding(
              padding: getPadding(
                left: 66,
                top: 33,
                right: 66,
                bottom: 32,
              ),
              child: Text(
                "lbl_update_info".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular24Bluegray700,
              ),
            ),
          ],
          styleType: Style.bgShadowBlack9003f,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 56,
            ),
            child: Container(
              height: getVerticalSize(
                973,
              ),
              width: getHorizontalSize(
                669,
              ),
              margin: getMargin(
                left: 40,
                right: 57,
                bottom: 5,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: getPadding(
                        left: 38,
                        top: 138,
                        right: 38,
                        bottom: 138,
                      ),
                      decoration: AppDecoration.outlineBlack9003f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder60,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Text(
                                "lbl_name_surname".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular32,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                top: 21,
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
                                  61,
                                ),
                                endIndent: getHorizontalSize(
                                  43,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 95,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: getSize(
                                    29,
                                  ),
                                  width: getSize(
                                    29,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueGray700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                  ),
                                  child: Text(
                                    "lbl_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 14,
                                right: 12,
                              ),
                              child: Text(
                                "lbl_aaaaaaa".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 16,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: getSize(
                                    29,
                                  ),
                                  width: getSize(
                                    29,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueGray700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_surname".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 14,
                                right: 12,
                              ),
                              child: Text(
                                "lbl_aaaaaa".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: getSize(
                                    29,
                                  ),
                                  width: getSize(
                                    29,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueGray700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_email".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 21,
                                right: 12,
                              ),
                              child: Text(
                                "msg_aaaaaa_aaaaa_aaa".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 2,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: getSize(
                                    29,
                                  ),
                                  width: getSize(
                                    29,
                                  ),
                                  margin: getMargin(
                                    top: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueGray700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 3,
                                right: 12,
                              ),
                              child: Text(
                                "msg".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 27,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: getSize(
                                    29,
                                  ),
                                  width: getSize(
                                    29,
                                  ),
                                  margin: getMargin(
                                    bottom: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueGray700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        6,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 15,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "lbl_account_type".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRomanRegular24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                top: 10,
                                right: 12,
                              ),
                              child: Text(
                                "lbl_aaaa".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser91,
                    height: getSize(
                      248,
                    ),
                    width: getSize(
                      248,
                    ),
                    alignment: Alignment.topCenter,
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
