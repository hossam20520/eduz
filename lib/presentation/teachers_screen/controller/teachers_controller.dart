import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/teachers_screen/models/teachers_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class TeachersController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<TeachersModel> teachersModelObj = TeachersModel().obs;

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
