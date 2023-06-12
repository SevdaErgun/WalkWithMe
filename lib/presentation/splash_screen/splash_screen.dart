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
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  child: Column(children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          height: MediaQuery.sizeOf(context).height * 3.5 / 10,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse8,
                              width:
                                  MediaQuery.sizeOf(context).height * 1.6 / 10),
                        ),
                        Container(
                            width: double.infinity,
                            height:
                                MediaQuery.sizeOf(context).height * 6.5 / 10,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgDog1,
                                  height: getSize(100),
                                  width: getSize(100),
                                  alignment: Alignment.topCenter,
                                  margin: getMargin(top: 26)),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                      height: getSize(160),
                                      width: getSize(160),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.blue30060,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(117)),
                                          border: Border.all(
                                              color: ColorConstant.black900,
                                              width: getHorizontalSize(6))))),
                              Container(
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgEllipse7,
                                      width: MediaQuery.sizeOf(context).height *
                                          3.3 /
                                          10,
                                      alignment: Alignment.bottomRight))
                            ]))
                      ]))))
                    ]))));
  }
}
