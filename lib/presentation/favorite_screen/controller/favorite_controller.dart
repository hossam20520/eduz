import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/favorite_screen/models/favorite_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';

class FavoriteController extends GetxController {
  Rx<FavoriteModel> favoriteModelObj = FavoriteModel().obs;
  FavoriteController(this.favoriteModelObj);







  // Rx<FavoriteController> favoriteModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
