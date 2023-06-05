import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/schools_info_screen/models/schools_info_model.dart';

class SchoolsInfoController extends GetxController {
  Rx<SchoolsInfoModel> schoolsInfoModelObj = SchoolsInfoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
