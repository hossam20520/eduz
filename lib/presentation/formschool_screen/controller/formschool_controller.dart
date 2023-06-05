import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/formschool_screen/models/formschool_model.dart';
import 'package:flutter/material.dart';

class FormschoolController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameoneController = TextEditingController();

  TextEditingController group5135Controller = TextEditingController();

  TextEditingController nametwoController = TextEditingController();

  TextEditingController group5133Controller = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<FormschoolModel> formschoolModelObj = FormschoolModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    nameoneController.dispose();
    group5135Controller.dispose();
    nametwoController.dispose();
    group5133Controller.dispose();
    emailController.dispose();
  }
}
