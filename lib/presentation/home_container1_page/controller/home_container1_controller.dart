import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/home_container1_page/models/home_container1_model.dart';
import 'package:flutter/material.dart';

class HomeContainer1Controller extends GetxController {
  HomeContainer1Controller(this.homeContainer1ModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeContainer1Model> homeContainer1ModelObj;


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
