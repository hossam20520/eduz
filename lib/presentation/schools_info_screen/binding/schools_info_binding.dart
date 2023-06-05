import '../controller/schools_info_controller.dart';
import 'package:get/get.dart';

class SchoolsInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolsInfoController());
  }
}
