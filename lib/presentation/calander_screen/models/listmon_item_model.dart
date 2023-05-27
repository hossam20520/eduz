import 'package:get/get.dart';

/// This class is used in the [listmon_item_widget] screen.
class ListmonItemModel {
  Rx<String> monTxt = Rx("Mon");

  Rx<String> tueTxt = Rx("Tue");

  Rx<String> wedTxt = Rx("Wed");

  Rx<String> thuTxt = Rx("Thu");

  Rx<String> friTxt = Rx("Fri");

  Rx<String> satTxt = Rx("Sat");

  Rx<String> sunTxt = Rx("Sun");

  Rx<String>? id = Rx("");
}
