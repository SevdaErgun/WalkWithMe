import '../../services/db/dog/dog_database.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_dog_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';
import 'package:walkwithme/globals.dart' as globals;

// ignore_for_file: must_be_immutable
class AddDogScreen extends GetWidget<AddDogController> {

  DogDatabase dogDatabase = DogDatabase();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.projectBackground,
        appBar: CustomAppBar(
          height: getVerticalSize(
            70,
          ),
          title: AppbarTitle(
            text: "walkwithme".tr,
            margin: getMargin(
              left: 26,
            ),
          ),
          actions: [
            Container(
              child: GestureDetector(
                onTap: () => {
                  _insert()
                },
                child: Icon(
                  Icons.verified,
                  color: Colors.green.shade400,
                  size: 32,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              margin: getMargin(right: 26),
              child: GestureDetector(
                onTap: () => {
                Get.toNamed(AppRoutes.dogsScreen)
                },
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
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                top: 85,
                left: MediaQuery.sizeOf(context).width * 1 / 10,
                right: MediaQuery.sizeOf(context).width * 1 / 10,
              ),
              decoration: AppDecoration.outlineBlack9003f.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder60,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 8 / 10,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: getVerticalSize(
                              125,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  25,
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
                                  ColorConstant.deepOrangeA400,
                                  ColorConstant.navigationBar,
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
                                130,
                              ),
                              width: getSize(
                                130,
                              ),
                              decoration:
                                  AppDecoration.outlineBlack900.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder117,
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDog1,
                                    height: getSize(
                                      60,
                                    ),
                                    width: getSize(
                                      60,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    controller: controller.dogNameController,
                    hintText: "lbl_dog_name".tr,
                    margin: getMargin(left: 30, top: 60, right: 30),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    controller: controller.dogGenderController,
                    hintText: "lbl_dog_gender".tr,
                    margin: getMargin(left: 30, top: 33, right: 30),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    controller: controller.dogBreedController,
                    hintText: "lbl_dog_breed".tr,
                    margin: getMargin(left: 30, top: 33, right: 30, bottom: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _insert() async {
    // row to insert
    Map<String, dynamic> row = {
      DogDatabase.columnName: controller.dogNameController.text,
      DogDatabase.columnGender: controller.dogGenderController.text,
      DogDatabase.columnBreed: controller.dogBreedController.text,
      DogDatabase.columnOwner: globals.user["id"],
    };
    final id = await dogDatabase.insert(row);

    controller.dogNameController.text = "";
    controller.dogGenderController.text = "";
    controller.dogBreedController.text = "";

    Get.toNamed(AppRoutes.dogsScreen);
  }
}
