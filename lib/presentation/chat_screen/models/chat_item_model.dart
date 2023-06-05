import 'package:get/get.dart';

/// This class is used in the [chat_item_widget] screen.
class ChatItemModel {
  Rx<String>? id = Rx("");
  Rx<String>? reply = Rx("");
  ChatItemModel({
    required this.reply,
    required this.id,
  });
}
