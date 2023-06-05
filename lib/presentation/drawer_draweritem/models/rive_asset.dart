import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;
  RiveAsset(this.src,
      {required this.artboard,
      required this.stateMachineName,
      required this.title,
      this.input});
  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> sideMenus = [
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "HOME",
    stateMachineName: "HOME_interactivity",
    title: "Home",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "USER",
    stateMachineName: "USER_Interactivity",
    title: "Profile",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "BELL",
    stateMachineName: "BELL_Interactivity",
    title: "Notification",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "SETTINGS",
    stateMachineName: "SETTINGS_Interactivity",
    title: "Language",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "CHAT",
    stateMachineName: "CHAT_Interactivity",
    title: "CHAT",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "LIKE/STAR",
    stateMachineName: "STAR_Interactivity",
    title: "Favorites",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "RULES",
    stateMachineName: "RULES_Interactivity",
    title: "About Eduz",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "LOADING",
    stateMachineName: "LOADING_Interactivity",
    title: "Help",
  ),
  RiveAsset(
    "assets/rive/icons_2.riv",
    artboard: "EXIT",
    stateMachineName: "state_machine",
    title: "LOGOUT",
  ),
];
