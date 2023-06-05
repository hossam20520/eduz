import 'package:get/get.dart';
import 'checkout_item_model.dart';

/// This class defines the variables used in the [checkout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutModel {
  Rx<List<CheckoutItemModel>> checkoutItemList =
      Rx(List.generate(2, (index) => CheckoutItemModel()));
}
