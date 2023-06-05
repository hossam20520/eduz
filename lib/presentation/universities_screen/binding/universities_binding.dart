import '../controller/universities_controller.dart';
import 'package:get/get.dart';

class UniversitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UniversitiesController());
  }
}
