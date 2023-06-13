import '../controller/history_controller.dart';
import '../models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/custom_button.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(this.historyItemModelObj);

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        287,
      ),
      width: getHorizontalSize(
        625,
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: getPadding(
                left: 56,
                top: 38,
                right: 56,
                bottom: 38,
              ),
              decoration: AppDecoration.outlineBlack9003f1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    height: getVerticalSize(
                      44,
                    ),
                    width: getHorizontalSize(
                      233,
                    ),
                    text: "lbl_deny".tr,
                    margin: getMargin(
                      top: 166,
                    ),
                    variant: ButtonVariant.OutlineRed400,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: getPadding(
                left: 20,
                top: 17,
                right: 20,
                bottom: 17,
              ),
              decoration:
                  AppDecoration.gradientDeeporangeA400d8Orange300d8.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBR299,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
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
                          left: 9,
                          top: 6,
                          bottom: 9,
                        ),
                        child: Text(
                          "lbl_name_surname".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRomanRegular14Black900,
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
                          left: 16,
                          top: 21,
                          bottom: 17,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.red400,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 143,
                        right: 3,
                        bottom: 21,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            height: getVerticalSize(
                              44,
                            ),
                            width: getHorizontalSize(
                              233,
                            ),
                            text: "lbl_confirm".tr,
                            fontStyle:
                                ButtonFontStyle.RobotoRomanRegular20Gray200,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 24,
                            ),
                            child: SizedBox(
                              height: getVerticalSize(
                                44,
                              ),
                              child: VerticalDivider(
                                width: getHorizontalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.black900,
                                indent: getHorizontalSize(
                                  1,
                                ),
                                endIndent: getHorizontalSize(
                                  4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: getHorizontalSize(
                510,
              ),
              margin: getMargin(
                top: 91,
              ),
              child: Text(
                "msg_lorem_ipsum_is_simply".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular20Black900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: getPadding(
                top: 30,
              ),
              child: Text(
                "lbl_1_hour_ago".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRomanRegular14Black900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
