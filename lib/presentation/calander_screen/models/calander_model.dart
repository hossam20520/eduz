import 'package:get/get.dart';
import 'listmon_item_model.dart';
import 'listone_item_model.dart';
import 'listrectangle42_item_model.dart';

/// This class defines the variables used in the [calander_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CalanderModel {
  Rx<List<ListmonItemModel>> listmonItemList =
      Rx(List.generate(2, (index) => ListmonItemModel()));

  Rx<List<ListoneItemModel>> listoneItemList =
      Rx(List.generate(4, (index) => ListoneItemModel()));

  Rx<List<Listrectangle42ItemModel>> listrectangle42ItemList =
      Rx(List.generate(6, (index) => Listrectangle42ItemModel()));
}
