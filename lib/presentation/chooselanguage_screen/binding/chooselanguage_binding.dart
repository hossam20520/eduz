import '../controller/chooselanguage_controller.dart';
import 'package:get/get.dart';

class ChooselanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooselanguageController());
  }
}
