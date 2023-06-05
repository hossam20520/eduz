import 'dart:math';

import 'package:eduz/presentation/calander_screen/calander_screen.dart';
import 'package:eduz/presentation/favorite_screen/favorite_screen.dart';
import 'package:eduz/presentation/profile_screen/profile_screen.dart';
import 'package:rive/rive.dart';

import '../../sideMenu/components/side_menu.dart';
import 'controller/home_container_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/home_container1_page/home_container1_page.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.purple100,
      body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.homeContainer1Page,
          onGenerateRoute: (routeSetting) => GetPageRoute(
              page: () => getCurrentPage(routeSetting.name!),
              transition: Transition.noTransition)),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        color: Color.fromARGB(255, 252, 252, 252),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            color: Color.fromARGB(255, 248, 219, 134),
            activeColor: Color.fromARGB(255, 255, 255, 255),
            tabBackgroundColor: ColorConstant.yellow700,
            onTabChange: (value) => {
              if (value == 0)
                {Get.toNamed(getCurrentRoute(BottomBarEnum.Home), id: 1)}
              else if (value == 1)
                {Get.toNamed(getCurrentRoute(BottomBarEnum.Calander), id: 1)}
              else if (value == 2)
                {Get.toNamed(getCurrentRoute(BottomBarEnum.favourit), id: 1)}
              else if (value == 3)
                {Get.toNamed(getCurrentRoute(BottomBarEnum.profile), id: 1)}
            },
            textSize: 10,
            tabs: const [
              GButton(
                icon: Icons.home,
                gap: 8,
                iconSize: 34,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                text: 'Home',
                textSize: 10,
              ),
              GButton(
                icon: Icons.event_note_rounded,
                gap: 8,
                iconSize: 34,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                text: 'Calendar',
              ),
              GButton(
                icon: Icons.star_rounded,
                gap: 8,
                iconSize: 34,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                text: 'Favourite',
              ),
              GButton(
                icon: Icons.person,
                gap: 8,
                iconSize: 34,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Get.toNamed(getCurrentRoute(type), id: 1);
  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeContainer1Page;
      case BottomBarEnum.Calander:
        return AppRoutes.calanderScreen;

      case BottomBarEnum.favourit:
        return AppRoutes.favoriteScreen;
      case BottomBarEnum.profile:
        return AppRoutes.profileScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeContainer1Page:
        return HomeContainer1Page();

      case AppRoutes.calanderScreen:
        return CalanderScreen();
      case AppRoutes.favoriteScreen:
        return FavoriteScreen();
      case AppRoutes.profileScreen:
        return ProfileScreen();
      default:
        return DefaultWidget();
    }
  }
}
