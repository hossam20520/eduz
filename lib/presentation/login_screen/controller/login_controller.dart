import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController mobilenumberController = TextEditingController();

  TextEditingController mobilenumberController1 = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    mobilenumberController.dispose();
    mobilenumberController1.dispose();
  }
}
