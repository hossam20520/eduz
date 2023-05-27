import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/home_screen/models/home_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
