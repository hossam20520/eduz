import 'dart:ui';

import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/drawer_draweritem/models/drawer_model.dart';
import 'package:intl/intl.dart';

import '../models/rive_asset.dart';

class DrawerController extends GetxController {
  Rx<DrawerModel> drawerModelObj = DrawerModel().obs;

  Rx<RiveAsset?> selectedMenu = Rx<RiveAsset?>(sideMenus.first);

  Rx<bool?> currentLang = Rx<bool?>(true);
  void isCurrentLanguageEnglish() {
    if (Intl.getCurrentLocale() == "en") {
      currentLang.value = true;
    } else {
      currentLang.value = false;
    }
  }

  void selectMenu(RiveAsset menu) {
    selectedMenu.value = menu;
  }

  void OpenShop() {
    Get.toNamed(
      AppRoutes.productsScreen,
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
