import 'package:walkwithme/presentation/home_screen/home_screen.dart';

import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../history_screen/widgets/history_item_widget.dart';
import '../home_screen/models/home_item_model.dart';
import '../home_screen/widgets/home_item_widget.dart';
import 'controller/history_controller.dart';
import 'models/history_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends GetWidget<HistoryController> {
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
              margin: EdgeInsets.only(right: 25),
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
          padding: EdgeInsets.only(top: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 9 / 10,
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
                            50,
                          ),
                        );
                      },
                      itemCount: controller
                          .historyModelObj.value.historyItemList.value.length,
                      itemBuilder: (context, index) {
                        HistoryItemModel model = controller
                            .historyModelObj.value.historyItemList.value[index];
                        return HistoryItemWidget(
                          model,
                        );
                      },
                    ),
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
