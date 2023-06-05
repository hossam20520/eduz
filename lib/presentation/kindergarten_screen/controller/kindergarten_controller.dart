import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/kindergarten_screen/models/kindergarten_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class KindergartenController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<KindergartenModel> kindergartenModelObj = KindergartenModel().obs;

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
