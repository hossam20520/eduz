import 'package:get/get.dart';

class HomeContainerItemModel {
  Rx<String> kindergartensTxt = Rx("KINDERGARTENs");
  Rx<String> image = Rx("image");
  Rx<String>? id = Rx("");
  Rx<String>? route = Rx("");
  HomeContainerItemModel({
    required this.route,
    required this.kindergartensTxt,
    required this.image,
    required this.id,
  });
}
