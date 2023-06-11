import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray200,
            body: Container(
                width: getHorizontalSize(766),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 49),
                              child: Padding(
                                  padding: getPadding(left: 265),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse8,
                                            height: getVerticalSize(340),
                                            width: getHorizontalSize(170)),
                                        Container(
                                            height: size.height,
                                            width: getHorizontalSize(501),
                                            margin: getMargin(top: 175),
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                children: [
                                                  CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgDog1,
                                                      height: getSize(183),
                                                      width: getSize(183),
                                                      alignment:
                                                          Alignment.topLeft,
                                                      margin: getMargin(
                                                          left: 26, top: 26)),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                          height: getSize(235),
                                                          width: getSize(235),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blue30060,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          117)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .black900,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          6))))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse7,
                                                      height:
                                                          getVerticalSize(780),
                                                      width: getHorizontalSize(
                                                          460),
                                                      alignment:
                                                          Alignment.bottomRight)
                                                ]))
                                      ]))))
                    ]))));
  }
}
