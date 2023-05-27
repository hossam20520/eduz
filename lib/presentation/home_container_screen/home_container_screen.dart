import 'package:eduz/presentation/calander_screen/calander_screen.dart';
import 'package:eduz/presentation/favorite_screen/favorite_screen.dart';
import 'package:eduz/presentation/profile_screen/profile_screen.dart';

import 'controller/home_container_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/home_container1_page/home_container1_page.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeContainer1Page,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
                  print(type);
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeContainer1Page;
      case BottomBarEnum.Calander:
        print(2222);
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

