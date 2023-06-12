import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';
import 'package:walkwithme/presentation/home_one_page/home_one_page.dart';
import 'package:walkwithme/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        appBar: CustomAppBar(
          height: 70,
          title: AppbarTitle(
            text: "lbl_walkwithme2".tr,
            margin: getMargin(
              left: 30,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 82,
                    top: 97,
                    right: 59,
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
                            97,
                          ),
                        );
                      },
                      itemCount: controller
                          .homeModelObj.value.homeItemList.value.length,
                      itemBuilder: (context, index) {
                        HomeItemModel model = controller
                            .homeModelObj.value.homeItemList.value[index];
                        return HomeItemWidget(
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
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home11:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Plus51:
        return "/";
      case BottomBarEnum.User81:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage();
      default:
        return DefaultWidget();
    }
  }
}
