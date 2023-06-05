import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/checkout_screen/models/checkout_model.dart';
import 'package:flutter/material.dart';

class CheckoutController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    mobilenumberController.dispose();
  }
}
