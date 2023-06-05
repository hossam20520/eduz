import '../controller/school_controller.dart';
import 'package:get/get.dart';

class SchoolBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolController());
  }
}
