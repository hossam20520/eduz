import '../controller/schools_facilities_controller.dart';
import 'package:get/get.dart';

class SchoolsFacilitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolsFacilitiesController());
  }
}
