import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.homeN,
      type: BottomBarEnum.Home,
      activeIcon: ImageConstant.homeSelect,
    ),
    BottomMenuModel(
      icon: ImageConstant.active_cala,
      type: BottomBarEnum.Calander,
      activeIcon: ImageConstant.calander_select,
    ),
    BottomMenuModel(
      icon: ImageConstant.favouritN,
      type: BottomBarEnum.favourit,
      activeIcon: ImageConstant.StartSelect,
    ),
    BottomMenuModel(
      icon: ImageConstant.profileN,
      type: BottomBarEnum.profile,
      activeIcon: ImageConstant.userSelect,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.yellow700,
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
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            BottomMenuModel bottomMenu = bottomMenuList[index];
            //  bottomMenu.icon
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenu.icon,
                height: getSize(
                  50,
                ),
                width: getSize(
                  44,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    22,
                  ),
                ),
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenu.activeIcon,
                height: getSize(
                  44,
                ),
                width: getSize(
                  44,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    22,
                  ),
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
            print(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Frame10421,
  Calander,
  favourit,
  profile,
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.type, required this.activeIcon});

  String icon;
  String activeIcon;
  BottomBarEnum type;
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
              'Please replace thddde respective Widget here',
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
