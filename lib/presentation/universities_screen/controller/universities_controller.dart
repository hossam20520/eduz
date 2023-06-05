import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/universities_screen/models/universities_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class UniversitiesController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<UniversitiesModel> universitiesModelObj = UniversitiesModel().obs;

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
