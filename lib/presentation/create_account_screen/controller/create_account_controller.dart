import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/create_account_screen/models/create_account_model.dart';
import 'package:flutter/material.dart';

class CreateAccountController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<CreateAccountModel> createAccountModelObj = CreateAccountModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    mobilenumberController.dispose();
    passwordController.dispose();
  }
}
