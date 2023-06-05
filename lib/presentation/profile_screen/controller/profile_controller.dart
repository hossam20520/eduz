import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/profile_screen/models/profile_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController emailoneController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<bool> isShowPassword = true.obs;

  ProfileController(this.profileModelObj);

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailoneController.dispose();
    mobilenumberController.dispose();
    passwordController.dispose();
  }
}
