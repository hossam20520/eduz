import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'models/rive_asset.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    Key? key,
    required this.menu,
    required this.press,
    required this.riveonInit,
    required this.isActive,
  }) : super(key: key);
  final RiveAsset menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveonInit;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white70,
            height: 1,
          ),
        ),
        Stack(children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            height: 56,
            width: isActive ? 300 : 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          ListTile(
            onTap: press,
            leading: SizedBox(
              height: 34,
              width: 34,
              child: RiveAnimation.asset(
                "assets/rive/icons_2.riv",
                artboard: menu.artboard,
                onInit: riveonInit,
              ),
            ),
            title: Text(
              menu.title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ])
      ],
    );
  }
}
