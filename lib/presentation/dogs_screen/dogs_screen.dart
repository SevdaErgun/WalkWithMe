import 'package:walkwithme/presentation/home_screen/home_screen.dart';

import '../../services/db/dog/dog_database.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../dogs_screen/widgets/dogs_item_widget.dart';
import 'controller/dogs_controller.dart';
import 'models/dogs_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:walkwithme/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:walkwithme/widgets/app_bar/appbar_title.dart';
import 'package:walkwithme/widgets/app_bar/custom_app_bar.dart';

class DogsScreen extends GetWidget<DogsController> {

  DogDatabase dogDatabase = DogDatabase();

   /** "dogDatabase.queryAllRows();" Kod ile tüm köpekler gelecek. Future<List<Map<String, dynamic>>> return type ı.
  İçinden bulabilirsin.**/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.projectBackground,
        bottomNavigationBar: CustomBottomBar(
            onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type));
            },
            roleStatus: 'Dog Owner'),
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
              margin: EdgeInsets.only(right: 30),
              child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.addDogScreen);
                  },
                  child: Icon(
                    Icons.add_box_outlined,
                    size: 35,
                    color: Colors.black,
                  )),
            )
          ],
          styleType: Style.bgShadowBlack9003f,
        ),
        body: Container(
            padding: getPadding(top: 45),
            alignment: Alignment.topCenter,
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
                        35,
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
            )),
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
