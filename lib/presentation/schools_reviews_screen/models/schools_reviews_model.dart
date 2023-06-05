import 'package:get/get.dart';
import 'schools_reviews_item_model.dart';

/// This class defines the variables used in the [schools_reviews_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchoolsReviewsModel {
  Rx<List<SchoolsReviewsItemModel>> schoolsReviewsItemList =
      Rx(List.generate(4, (index) => SchoolsReviewsItemModel()));
}
