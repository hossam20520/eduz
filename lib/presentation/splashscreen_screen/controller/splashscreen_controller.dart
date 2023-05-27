import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/splashscreen_screen/models/splashscreen_model.dart';

class SplashscreenController extends GetxController {
  Rx<SplashscreenModel> splashscreenModelObj = SplashscreenModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.chooselanguageScreen,
      );
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
