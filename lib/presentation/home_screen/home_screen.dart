import '../../services/db/reservation/reservation_database.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';
import 'package:walkwithme/globals.dart' as globals;

class HomeScreen extends GetWidget<HomeController> {
  Future<List<Map<String, dynamic>>> reservationsById =
      ReservationDatabase.getByDogOwnerId(globals.user["id"]);

  Future<List<Map<String, dynamic>>> allReservations =
      ReservationDatabase.queryAllRows();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.projectBackground,
        appBar: CustomAppBar(
          height: 70,
          title: AppbarTitle(
            text: "walkwithme".tr,
            margin: getMargin(
              left: 26,
            ),
          ),
          actions: [
            if (globals.user["role"] == "Dog Owner")
              Container(
                  child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.dogsScreen);
                },
                child: Image.asset(
                  ImageConstant.imgDogIcon,
                  width: 35,
                ),
              )),
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 26),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
                size: 35,
              ),
            )
          ],
          styleType: Style.bgShadowBlack9003f,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 9 / 10,
                  child: FutureBuilder<List<Map<String, dynamic>>>(
                    future: globals.user["role"] == "Dog Owner"
                        ? reservationsById
                        : allReservations,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        print(snapshot.data);
                        List<Map<String, dynamic>> reservationListData =
                            snapshot.data!;
                        return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(35),
                            );
                          },
                          itemCount: reservationListData.length,
                          itemBuilder: (context, index) {
                            return HomeItemWidget(reservationListData[index]);
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      }
                      // You can return a placeholder widget or null while data is loading
                      return CircularProgressIndicator();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type));
          },
          roleStatus: globals.user["role"],
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreen;
      case BottomBarEnum.Plus:
        return AppRoutes.addScheduleForWalkersScreen;
      case BottomBarEnum.History:
        return AppRoutes.historyScreen;
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreen:
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }
}
