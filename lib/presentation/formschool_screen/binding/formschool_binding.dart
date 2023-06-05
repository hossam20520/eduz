import '../controller/formschool_controller.dart';
import 'package:get/get.dart';

class FormschoolBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FormschoolController());
  }
}
