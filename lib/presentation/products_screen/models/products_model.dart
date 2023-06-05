import 'package:get/get.dart';
import 'products_item_model.dart';

/// This class defines the variables used in the [products_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductsModel {
  Rx<List<ProductsItemModel>> productsItemList =
      Rx(List.generate(10, (index) => ProductsItemModel()));
}
