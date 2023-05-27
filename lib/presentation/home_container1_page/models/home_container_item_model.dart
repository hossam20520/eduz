import 'package:get/get.dart';

class HomeContainerItemModel {
  Rx<String> kindergartensTxt = Rx("KINDERGARTENs");
  Rx<String> image = Rx("image");
  Rx<String>? id = Rx("");


  HomeContainerItemModel({
    required this.kindergartensTxt,
    required this.image,
    required this.id,
  });
}
