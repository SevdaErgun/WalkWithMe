import '../controller/dogs_controller.dart';
import '../models/dogs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

// ignore: must_be_immutable
class DogsItemWidget extends StatelessWidget {
  DogsItemWidget(this.dogsItemModelObj);

  DogsItemModel dogsItemModelObj;

  var controller = Get.find<DogsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder60,
      ),
      child: Row(
        children: [
          Container(
            padding: getPadding(
              left: 18,
              top: 20,
              right: 18,
              bottom: 20,
            ),
            decoration:
                AppDecoration.gradientDeeporangeA40001Orange300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder60,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
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
                    borderRadius: BorderRadiusStyle.roundedBorder45,
                  ),
                  child: Container(
                    height: getSize(
                      91,
                    ),
                    width: getSize(
                      91,
                    ),
                    padding: getPadding(
                      all: 21,
                    ),
                    decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder45,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDog1,
                          height: getSize(
                            48,
                          ),
                          width: getSize(
                            48,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Text(
                    "lbl_dog_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular20Gray200,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 25,
              top: 25,
              bottom: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_gender_aaaaaaa".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular24,
                ),
                Padding(
                  padding: getPadding(
                    top: 48,
                  ),
                  child: Text(
                    "lbl_breed_aaaaaa".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanRegular24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
