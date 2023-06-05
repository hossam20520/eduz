import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/choose_auth_screen/models/choose_auth_model.dart';
import 'package:flutter/material.dart';

class ChooseAuthController extends GetxController {
  TextEditingController registerController = TextEditingController();

  TextEditingController buttonController = TextEditingController();

  Rx<ChooseAuthModel> chooseAuthModelObj = ChooseAuthModel().obs;

  void GotoLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  void GoToRegister() {
    Get.toNamed(
      AppRoutes.createAccountScreen,
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    registerController.dispose();
    buttonController.dispose();
  }
}
