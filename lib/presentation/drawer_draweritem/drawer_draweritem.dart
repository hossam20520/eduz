import 'dart:ui';

import 'package:eduz/core/utils/rive_utils.dart';
import 'package:eduz/presentation/drawer_draweritem/side_menu_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl.dart';
import 'package:rive/rive.dart';

import '../../widgets/custom_icon_button.dart';
import 'controller/drawer_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart' hide DrawerController;
import 'package:flutter/cupertino.dart';

import 'models/rive_asset.dart';

class DrawerDraweritem extends StatelessWidget {
  DrawerDraweritem(this.controller);

  DrawerController controller;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double drawerWidthPercentage = 0.7; // 50% of the screen width
    double drawerWidth = screenWidth * drawerWidthPercentage;

    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 300,
          height: double.infinity,
          color: ColorConstant.yellow700,
          child: SafeArea(
            child: Column(
              children: [
                InfoCard(name: "Hossam", profission: "developer"),
                Padding(
                  padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16),
                  child: Text(
                    "Browser".toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white70),
                  ),
                ),
                ...sideMenus.map((menu) => Obx(() => SideMenuTile(
                      menu: menu,
                      riveonInit: (artboard) {
                        StateMachineController controller =
                            RiveUtils.getRiveController(artboard,
                                stateMachineName: menu.stateMachineName);
                        menu.input = controller.findSMI("active") as SMIBool;
                      },
                      press: () {
                        menu.input!.change(true);
                        Future.delayed(Duration(seconds: 1), () {
                          menu.input!.change(false);
                        });
                        controller.selectedMenu(menu);
                      },
                      isActive: controller.selectedMenu == menu,
                    )))
              ],
            ),
          ),
        ));
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.name, required this.profission})
      : super(key: key);
  final String name, profission;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        profission,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
