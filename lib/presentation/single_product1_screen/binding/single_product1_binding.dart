import '../controller/single_product1_controller.dart';
import 'package:get/get.dart';

class SingleProduct1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SingleProduct1Controller());
  }
}
