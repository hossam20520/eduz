import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/tab_container_screen/models/tab_tab_container_model.dart';
import 'package:flutter/material.dart';

class TabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<SingleSuppliePolicyTabTabContainerModel>
      singleSuppliePolicyTabTabContainerModelObj =
      SingleSuppliePolicyTabTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
