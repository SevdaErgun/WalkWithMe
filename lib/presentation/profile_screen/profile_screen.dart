import 'package:walkwithme/presentation/home_screen/home_screen.dart';

import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  final List<Map<String, dynamic>> row = Get.arguments['row'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.updateProfileScreen);
              },
              child: Container(
                margin: getMargin(right: 26),
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
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                580,
              ),
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: getPadding(
                        left: 38,
                        top: 80,
                        right: 38,
                        bottom: 38,
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
                            child: Container(
                              child: Text(
                                row[0].values.toList()[2] +
                                    row[0].values.toList()[3],
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
                              top: 40,
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
                                row[0].values.toList()[2],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 0,
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
                                row[0].values.toList()[3],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 0,
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
                                top: 14,
                                right: 12,
                              ),
                              child: Text(
                                row[0].values.toList()[1],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 0,
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
                                top: 14,
                                right: 12,
                              ),
                              child: Text(
                                row[0].values.toList()[4],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanRegular24,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 0,
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
                                top: 14,
                                right: 12,
                              ),
                              child: Text(
                                row[0].values.toList()[5],
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
                    width: MediaQuery.sizeOf(context).width * 3 / 10,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            print(type);
            Get.toNamed(getCurrentRoute(type));
          },
          roleStatus: 'Dog Owner',
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
        return AppRoutes.addScheduleForWalkersScreen;
      case BottomBarEnum.History:
        return AppRoutes.historyScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
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
