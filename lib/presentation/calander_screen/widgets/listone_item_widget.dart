import '../controller/calander_controller.dart';
import '../models/listone_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListoneItemWidget extends StatelessWidget {
  ListoneItemWidget(this.listoneItemModelObj);

  ListoneItemModel listoneItemModelObj;

  var controller = Get.find<CalanderController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            listoneItemModelObj.oneTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium14Gray900.copyWith(
              letterSpacing: getHorizontalSize(
                1.25,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 38,
          ),
          child: Obx(
            () => Text(
              listoneItemModelObj.oneoneTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  1.25,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 38,
          ),
          child: Obx(
            () => Text(
              listoneItemModelObj.onetwoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  1.25,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 33,
          ),
          child: Obx(
            () => Text(
              listoneItemModelObj.onethreeTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  1.25,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 28,
          ),
          child: Obx(
            () => Text(
              listoneItemModelObj.onefourTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  1.25,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 30,
          ),
          child: Obx(
            () => Text(
              listoneItemModelObj.onefiveTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  1.25,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 28,
          ),
          child: Obx(
            () => Text(
              listoneItemModelObj.onesixTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  1.25,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
