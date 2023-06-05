import 'package:get/get.dart';
import 'teachers_item_model.dart';

/// This class defines the variables used in the [teachers_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TeachersModel {
  Rx<List<TeachersItemModel>> teachersItemList =
      Rx(List.generate(6, (index) => TeachersItemModel()));
}
