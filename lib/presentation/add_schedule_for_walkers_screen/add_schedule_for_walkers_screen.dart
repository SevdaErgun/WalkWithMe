import 'package:walkwithme/services/db/reservation/reservation_database.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/add_schedule_for_walkers_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';
import 'package:date_time_picker/date_time_picker.dart';

// ignore_for_file: must_be_immutable
class AddScheduleForWalkersScreen
    extends GetWidget<AddScheduleForWalkersController> {
  ReservationDatabase reservationDatabase = ReservationDatabase();
  final AddScheduleForWalkersController c =
      Get.put(AddScheduleForWalkersController());
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
                onTap: () => {makeReservation()},
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
                onTap: () => {Get.toNamed(AppRoutes.homeScreen)},
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
                    alignment: Alignment.centerLeft,
                    margin: getMargin(left: 30, right: 30, top: 30),
                    child: Text('Select a dog'),
                  ),
                  Obx(() => Container(
                      // color: Colors.green,
                      width: double.infinity,
                      margin: getMargin(left: 30, right: 30),
                      alignment: Alignment.centerLeft,
                      child: DropdownButton<String>(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          value: c.itemCurrent.value,
                          items: c.items.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgDog1,
                                    height: getSize(
                                      30,
                                    ),
                                    width: getSize(
                                      30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(item),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (item) {
                            c.itemCurrent.value = item!;
                          }))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: getMargin(left: 30, right: 30),
                        child: Text('Select Start Date'),
                      ),
                      Container(
                        margin: getMargin(left: 30, right: 30, bottom: 30),
                        child: DateTimePicker(
                          type: DateTimePickerType.dateTimeSeparate,
                          dateMask: 'd MMM, yyyy',
                          initialValue: DateTime.now().toString(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                          icon: Icon(Icons.event),
                          dateLabelText: 'Date',
                          timeLabelText: "Hour",
                          selectableDayPredicate: (date) {
                            // Disable weekend days to select from the calendar

                            return true;
                          },
                          onChanged: (val) => print(val),
                          validator: (val) {
                            print(val);
                            return null;
                          },
                          onSaved: (val) => print(val),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: getMargin(left: 30, right: 30),
                        child: Text('Select Finish Date'),
                      ),
                      Container(
                        margin: getMargin(left: 30, right: 30, bottom: 30),
                        child: DateTimePicker(
                          type: DateTimePickerType.dateTimeSeparate,
                          dateMask: 'd MMM, yyyy',
                          initialValue: DateTime.now().toString(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                          icon: Icon(Icons.event),
                          dateLabelText: 'Date',
                          timeLabelText: "Hour",
                          selectableDayPredicate: (date) {
                            // Disable weekend days to select from the calendar

                            return true;
                          },
                          onChanged: (val) => print(val),
                          validator: (val) {
                            print(val);
                            return null;
                          },
                          onSaved: (val) => print(val),
                        ),
                      ),
                    ],
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
      ReservationDatabase.columnEndDate: controller.startDateController.text,
      ReservationDatabase.columnDogId: 1,
    };

    reservationDatabase.insert(row);
  }
}
