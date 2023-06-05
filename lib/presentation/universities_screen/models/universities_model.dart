import 'package:get/get.dart';
import 'universities_item_model.dart';

/// This class defines the variables used in the [universities_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UniversitiesModel {
  Rx<List<UniversitiesItemModel>> universitiesItemList =
      Rx(List.generate(8, (index) => UniversitiesItemModel()));
}
