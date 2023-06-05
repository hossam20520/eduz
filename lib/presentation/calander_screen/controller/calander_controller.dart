import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/calander_screen/models/calander_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';

class CalanderController extends GetxController {
  Rx<CalanderModel> calanderModelObj = CalanderModel().obs;

  CalanderController(this.CalanderModelObj);

  Rx<CalanderModel> CalanderModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
