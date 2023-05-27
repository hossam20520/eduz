import '../controller/choose_auth_controller.dart';
import 'package:get/get.dart';

class ChooseAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseAuthController());
  }
}
