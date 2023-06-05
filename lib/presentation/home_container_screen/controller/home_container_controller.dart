import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/home_container_screen/models/home_container_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/animation.dart';
import 'package:rive/rive.dart';

class HomeContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;
  // Rx<bool?> isSideMenuClosed = Rx<bool?>(true);
  late AnimationController animationController;

  void updateisSideMenuClosed(value) {
    homeContainerModelObj.update((model) {
      model!.isSideMenuClosed = value;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    animationController.dispose();
    // animationController.dispose();
  }

  @override
  void onInit() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    homeContainerModelObj.value.animation =
        Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn),
    );

    homeContainerModelObj.value.scalAnimation =
        Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn),
    );
  }
}
