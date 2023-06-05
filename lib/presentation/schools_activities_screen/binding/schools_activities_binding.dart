import '../controller/schools_activities_controller.dart';
import 'package:get/get.dart';

class SchoolsActivitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolsActivitiesController());
  }
}
