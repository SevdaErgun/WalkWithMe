import '../home_one_page/widgets/home_one_item_widget.dart';
import 'controller/home_one_controller.dart';
import 'models/home_one_item_model.dart';
import 'models/home_one_model.dart';
import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

class HomeOnePage extends StatelessWidget {
  HomeOneController controller = Get.put(HomeOneController(HomeOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray200,
        body: Container(
          width: getHorizontalSize(
            766,
          ),
          decoration: AppDecoration.fillGray200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      27,
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
                        top: 66,
                        right: 70,
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
                                78,
                              ),
                            );
                          },
                          itemCount: controller.homeOneModelObj.value
                              .homeOneItemList.value.length,
                          itemBuilder: (context, index) {
                            HomeOneItemModel model = controller.homeOneModelObj
                                .value.homeOneItemList.value[index];
                            return HomeOneItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
