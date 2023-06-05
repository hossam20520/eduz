import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/schools_facilities_screen/models/schools_facilities_model.dart';

class SchoolsFacilitiesController extends GetxController {
  Rx<SchoolsFacilitiesModel> schoolsFacilitiesModelObj =
      SchoolsFacilitiesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
