import 'package:get/get.dart';
import 'staggered_item_model.dart';

/// This class defines the variables used in the [schools_activities_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SchoolsActivitiesModel {
  Rx<List<StaggeredItemModel>> staggeredItemList =
      Rx(List.generate(4, (index) => StaggeredItemModel()));
}
