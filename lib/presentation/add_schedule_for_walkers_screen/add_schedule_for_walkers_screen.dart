import 'package:walkwithme/services/db/reservation/reservation_database.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_schedule_for_walkers_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AddScheduleForWalkersScreen extends GetWidget<AddScheduleForWalkersController> {

  ReservationDatabase reservationDatabase = ReservationDatabase();

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
                  makeReservation()
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
                Get.toNamed(AppRoutes.homeScreen)
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
            padding: getPadding(
              top: 85,
            ),
            child: Container(
              margin: getMargin(
                left: MediaQuery.sizeOf(context).width * 1 / 10,
                right: MediaQuery.sizeOf(context).width * 1 / 10,
                bottom: 5,
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
                          alignment: Alignment.center,
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
                                    imagePath: ImageConstant.imgDogwalking1,
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
                    controller: controller.titleController,
                    hintText: "lbl_title".tr,
                    margin: getMargin(left: 30, top: 60, right: 30),
                  ),
                  Container(
                    margin: getMargin(
                      left: 44,
                      top: 33,
                      right: 57,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 15,
                      right: 19,
                      bottom: 15,
                    ),
                    decoration: AppDecoration.outlineBluegray700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder13,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 11,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_select_a_dog".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular24,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgDog1,
                          height: getSize(
                            46,
                          ),
                          width: getSize(
                            46,
                          ),
                          margin: getMargin(
                            top: 1,
                            right: 27,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    controller: controller.startDateController,
                    hintText: "lbl_start_date".tr,
                    margin: getMargin(left: 30, top: 30, right: 30),
                  ),
                  CustomTextFormField(
                    focusNode: FocusNode(),
                    autofocus: false,
                    controller: controller.endDateController,
                    hintText: "lbl_finish_date".tr,
                    margin: getMargin(left: 30, top: 30, right: 30, bottom: 30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void makeReservation() {
    Map<String, dynamic> row = {
      ReservationDatabase.columnTitle: controller.titleController.text,
      ReservationDatabase.columnStartDate: controller.startDateController.text,
      ReservationDatabase.columnEndDate:controller.startDateController.text,
      ReservationDatabase.columnDogId: 1,
    };

    reservationDatabase.insert(row);
  }
}
