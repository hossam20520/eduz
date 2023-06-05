import '../controller/teachers_controller.dart';
import 'package:get/get.dart';

class TeachersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeachersController());
  }
}
