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
import 'package:walkwithme/globals.dart' as globals;

class DogsScreen extends GetWidget<DogsController> {
  //DogDatabase dogDatabase = DogDatabase();

  Future<List<Map<String, dynamic>>> dogList =
      DogDatabase.getByOwner(globals.user[0].values.toList()[6]);

  /*Future<List<Map<String, dynamic>>> ccc = [
    {
      'columnId': 'id1',
      'columnName': 'name1',
      'columnGender': 'gender1',
      'columnBreed': 'breed1',
      'columnOwner': 'owner1'
    },
    {
      'columnId': 'id1',
      'columnName': 'name2',
      'columnGender': 'gender2',
      'columnBreed': 'breed2',
      'columnOwner': 'owner2'
    }
  ];*/

/*Kod ile tüm köpekler gelecek. Future<List<Map<String, dynamic>>> return type ı.
  İçinden bulabilirsin.
  print(globals.user[0].values.toList()[6]);*/
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
            width: MediaQuery.of(context).size.width * 9 / 10,
            child: Obx(
              () => FutureBuilder<List<Map<String, dynamic>>>(
                future: dogList,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Map<String, dynamic>> dogItems = snapshot.data!;
                    return ListView.separated(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(35),
                        );
                      },
                      itemCount: dogItems.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> model = dogItems[index];
                        return DogsItemWidget(model);
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
