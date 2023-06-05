import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/schools_activities_screen/models/schools_activities_model.dart';

class SchoolsActivitiesController extends GetxController {
  Rx<SchoolsActivitiesModel> schoolsActivitiesModelObj =
      SchoolsActivitiesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
