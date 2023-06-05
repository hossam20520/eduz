import 'package:get/get.dart';
import 'kindergarten_item_model.dart';

/// This class defines the variables used in the [kindergarten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class KindergartenModel {
  Rx<List<KindergartenItemModel>> kindergartenItemList =
      Rx(List.generate(10, (index) => KindergartenItemModel()));
}
