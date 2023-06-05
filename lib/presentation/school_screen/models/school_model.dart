import 'package:get/get.dart';
import 'school_item_model.dart';
import 'school1_item_model.dart';

/// This class defines the variables used in the [school_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchoolModel {
  Rx<List<SchoolItemModel>> schoolItemList =
      Rx(List.generate(7, (index) => SchoolItemModel()));

  Rx<List<School1ItemModel>> school1ItemList =
      Rx(List.generate(12, (index) => School1ItemModel()));
}
