import '../controller/schools_reviews_controller.dart';
import 'package:get/get.dart';

class SchoolsReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolsReviewsController());
  }
}
