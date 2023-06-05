import '../controller/kindergarten_controller.dart';
import 'package:get/get.dart';

class KindergartenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => KindergartenController());
  }
}
