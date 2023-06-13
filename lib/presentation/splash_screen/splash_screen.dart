import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.projectBackground,
            body: Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
                color: ColorConstant.projectBackground,
                child: Stack(children: [
                  Positioned.fill(
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 55),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse8,
                          color: Color.fromRGBO(244, 143, 74, 81 / 100),
                          width: MediaQuery.sizeOf(context).width * 2.5 / 10),
                    ),
                  ),
                  Positioned.fill(
                      child: Container(
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse7,
                              color: Color.fromRGBO(223, 235, 99, 1),
                              width: MediaQuery.sizeOf(context).width * 7 / 10,
                              alignment: Alignment.bottomRight))),
                  Positioned.fill(
                    child: Container(
                        child: Container(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProjectLogo,
                            height: getSize(100),
                            width: getSize(100),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "lbl_walkwithme".tr,
                            style: AppStyle.txtDancingScript,
                          )
                        ]))),
                  ),
                ]))));
  }
}
