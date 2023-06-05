import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/chooselanguage_screen/models/chooselanguage_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ChooselanguageController extends GetxController {
  Rx<ChooselanguageModel> chooselanguageModelObj = ChooselanguageModel().obs;

  void setLocale(String languageCode) {
    Get.updateLocale(Locale(languageCode));
  }

  void selectArabic() {
    setLocale('ar');
    chooselanguageModelObj.update((model) {
      model!.isEnglishSelected = false;
    });
  }

  void selectEnglish() {
    setLocale('en');
    chooselanguageModelObj.update((model) {
      model!.isEnglishSelected = true;
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
