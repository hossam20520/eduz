import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/products_screen/models/products_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';

class ProductsController extends GetxController {
  Rx<ProductsModel> productsModelObj = ProductsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
