import 'package:flutter/material.dart';
import '../teachers_screen/widgets/teachers_item_widget.dart';

import 'package:eduz/core/app_export.dart';

import 'package:eduz/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_searchview.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';

class GlobalAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      background: Colors.transparent,
      height: getVerticalSize(
        96,
      ),
      leadingWidth: 38,
      leading: AppbarImage(
        height: getVerticalSize(
          23,
        ),
        width: getHorizontalSize(
          31,
        ),
        svgPath: ImageConstant.imgMenuPurpleA400,
        margin: getMargin(
          left: 7,
          top: 15,
          bottom: 17,
        ),
      ),
      centerTitle: true,
      title: AppbarSearchview(
        autofocus: false,
        hintText: "lbl_search".tr,
      ),
      actions: [
        AppbarIconbutton(
          svgPath: ImageConstant.imgFilter,
          margin: getMargin(
            left: 15,
            top: 9,
            right: 15,
            bottom: 10,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
