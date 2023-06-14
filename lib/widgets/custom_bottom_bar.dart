import 'package:flutter/material.dart';
import 'package:walkwithme/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged, this.roleStatus}) {
    initializeBottomMenuList();
  }

  RxInt selectedIndex = 0.obs;

  late List<BottomMenuModel> bottomMenuList;

  void initializeBottomMenuList() {
    bottomMenuList = [
      BottomMenuModel(
        icon: ImageConstant.imgHome,
        type: BottomBarEnum.Home,
        isPng: true,
      ),
      (roleStatus == "Dog Owner")
          ? BottomMenuModel(
              icon: ImageConstant.imgPlus,
              type: BottomBarEnum.Plus,
              isPng: true,
            )
          : BottomMenuModel(
              icon: ImageConstant.imgHistory,
              type: BottomBarEnum.History,
              isPng: true,
            ),
      BottomMenuModel(
        icon: ImageConstant.imgProfile,
        type: BottomBarEnum.Profile,
        isPng: true,
      ),
    ];
  }

  Function(BottomBarEnum)? onChanged;
  String? roleStatus;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.navigationBar,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              40,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              40,
            ),
          ),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].icon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].icon
                    : null,
                height: getSize(
                  35,
                ),
                width: getSize(
                  35,
                ),
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].icon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].icon
                    : null,
                height: getSize(
                  35,
                ),
                width: getSize(
                  35,
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum { Home, Plus, Profile, History }

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
