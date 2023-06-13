import 'package:walkwithme/presentation/home_screen/home_screen.dart';

import '../history_screen/widgets/history_item_widget.dart';
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
        backgroundColor: ColorConstant.gray200,
        body: Container(
          width: getHorizontalSize(
            766,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  29,
                ),
                width: getHorizontalSize(
                  766,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray200,
                  boxShadow: [
                    BoxShadow(
                      color: ColorConstant.black9003f,
                      spreadRadius: getHorizontalSize(
                        2,
                      ),
                      blurRadius: getHorizontalSize(
                        2,
                      ),
                      offset: Offset(
                        0,
                        10,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 70,
                    top: 94,
                    right: 66,
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
                            94,
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
        return AppRoutes.homeScreen;
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
      case AppRoutes.homeScreen:
        return HomeScreen();
      default:
        return DefaultWidget();
    }
  }
}
