import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/school_screen/models/school_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SchoolController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SchoolModel> schoolModelObj = SchoolModel().obs;

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
