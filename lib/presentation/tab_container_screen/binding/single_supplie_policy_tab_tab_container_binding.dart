import '../controller/tab_container_controller.dart';
import 'package:get/get.dart';

class SingleSuppliePolicyTabTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabContainerController());
  }
}
