import 'package:walkwithme/services/db/customer/customer_database.dart';
import '../../../services/db/reservation/reservation_database.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/globals.dart' as globals;

class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(this.reservationItem);

  Map<String, dynamic> reservationItem;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: ColorConstant.cardBackground,
            borderRadius: BorderRadius.all(Radius.circular(13)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, 8),
              ),
            ],
          ),
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                right: MediaQuery.sizeOf(context).width * 5 / 10,
                child: Container(
                  decoration: AppDecoration.gradientDeeporangeA400d8Orange300d8
                      .copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBR299,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [],
                  ),
                ),
              ),
              Container(
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUser91,
                          height: getSize(
                            35,
                          ),
                          width: getSize(
                            35,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 9,
                            top: 6,
                            bottom: 9,
                          ),
                          child: FutureBuilder<Map<String, dynamic>>(
                            future: CustomerDatabase.getById(
                                reservationItem['dog_owner_id']),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                print(snapshot.data);
                                Map<String, dynamic> person = snapshot.data!;
                                return Text(
                                  person['name'] + " " + person['surname'],
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanRegular14Black900,
                                );
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              }
                              // You can return a placeholder widget or null while data is loading
                              return CircularProgressIndicator();
                            },
                          ),
                          /*Text(
                        CustomerDatabase.getById( reservationItem['dogOwnerId']).then((value) => value['name'].toString()),
                       
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanRegular14Black900,
                      ),*/
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: getSize(
                            7,
                          ),
                          width: getSize(
                            7,
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
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            child: Text(
                              reservationItem['createdAt'].toString(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular18Red400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Text(
                      reservationItem['title'],
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRomanRegular20Black900,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (globals.user["role"] == 'Dog Owner' &&
                            reservationItem['is_reserved'] == 0 &&
                            reservationItem['is_canceled'] == 0)
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 3 / 10,
                            child: ElevatedButton(
                                onPressed: () {
                                  _confirmReservation();
                                },
                                child: const Text('Confirm'),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        ColorConstant.blue30001),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), /*side: BorderSide(color: Colors.red)*/
                                    )))),
                          ),
                        if (globals.user["role"] == 'Dog Owner' &&
                            reservationItem['is_reserved'] == 0 &&
                            reservationItem['is_canceled'] == 0)
                          Padding(
                            padding: getPadding(left: 24, right: 24),
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
                        if (globals.user["role"] == 'Walker' &&
                            reservationItem['is_reserved'] == 0 && reservationItem['is_canceled'] != 0)
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 5 / 10,
                            child: ElevatedButton(
                                onPressed: () {
                                  apply();
                                },
                                child: const Text('Apply'),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        ColorConstant.blue30001),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), /*side: BorderSide(color: Colors.red)*/
                                    )))),
                          ),
                        if (globals.user["role"] == 'Walker' &&
                            reservationItem['is_canceled'] == 0)
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 5 / 10,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Submitted'),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.yellow.shade400),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), /*side: BorderSide(color: Colors.red)*/
                                    )))),
                          ),
                        if (globals.user["role"] == 'Walker' &&
                            reservationItem['is_canceled'] == 2 && reservationItem['is_reserved'] == 1)
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 5 / 10,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Matched'),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green.shade400),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), /*side: BorderSide(color: Colors.red)*/
                                    )))),
                          ),
                        if (globals.user["role"] == 'Dog Owner' &&
                            reservationItem['is_canceled'] == 2)
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 5 / 10,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text('Matched'),
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green.shade400),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          8.0), /*side: BorderSide(color: Colors.red)*/
                                    )))),
                          ),
                        if (globals.user["role"] == 'Dog Owner' &&
                            reservationItem['is_reserved'] == 0 &&
                            reservationItem['is_canceled'] == 0)
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 3 / 10,
                            child: OutlinedButton(
                              onPressed: () {
                                _denyReservation();
                              },
                              child: const Text('Deny',
                                  style: TextStyle(
                                      color: Color.fromRGBO(235, 88, 78, 1))),
                              style: OutlinedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(8.0)),
                                side: BorderSide(
                                    width: 1.0, color: ColorConstant.red400),
                              ),
                            ),
                          )
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        );
  }

  void _confirmReservation() {
    Map<String, dynamic> row = {
      ReservationDatabase.columnIsReserved: 1,
      ReservationDatabase.columnIsCanceled: 2,
      ReservationDatabase.columnId: reservationItem["id"]
    };

    ReservationDatabase.update(row);
    Get.offNamed(Get.currentRoute);
  }

  void _denyReservation() {
    Map<String, dynamic> row = {
      ReservationDatabase.columnIsReserved: 0,
      ReservationDatabase.columnIsCanceled: -1,
      ReservationDatabase.columnId: reservationItem["id"]
    };

    ReservationDatabase.update(row);
    Get.offNamed(Get.currentRoute);
  }

  void apply() {
    Map<String, dynamic> row = {
      ReservationDatabase.columnIsCanceled: 0,
      ReservationDatabase.columnId: reservationItem["id"]
    };

    ReservationDatabase.update(row);
    Get.offNamed(Get.currentRoute);

  }
}
