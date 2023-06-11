import '../dogs_screen/widgets/dogs_item_widget.dart';
import 'controller/dogs_controller.dart';
import 'models/dogs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class DogsScreen extends GetWidget<DogsController> {
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
        body: Padding(
          padding: getPadding(
            left: 88,
            top: 146,
            right: 75,
          ),
          child: Obx(
            () => ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: getVerticalSize(
                    76,
                  ),
                );
              },
              itemCount:
                  controller.dogsModelObj.value.dogsItemList.value.length,
              itemBuilder: (context, index) {
                DogsItemModel model =
                    controller.dogsModelObj.value.dogsItemList.value[index];
                return DogsItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
