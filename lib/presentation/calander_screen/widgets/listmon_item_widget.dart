import '../controller/calander_controller.dart';
import '../models/listmon_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListmonItemWidget extends StatelessWidget {
  ListmonItemWidget(this.listmonItemModelObj);

  ListmonItemModel listmonItemModelObj;

  var controller = Get.find<CalanderController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            listmonItemModelObj.monTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoRegular12.copyWith(
              letterSpacing: getHorizontalSize(
                0.4,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 23,
          ),
          child: Obx(
            () => Text(
              listmonItemModelObj.tueTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12.copyWith(
                letterSpacing: getHorizontalSize(
                  0.4,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 23,
          ),
          child: Obx(
            () => Text(
              listmonItemModelObj.wedTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12.copyWith(
                letterSpacing: getHorizontalSize(
                  0.4,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 23,
          ),
          child: Obx(
            () => Text(
              listmonItemModelObj.thuTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12.copyWith(
                letterSpacing: getHorizontalSize(
                  0.4,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 29,
          ),
          child: Obx(
            () => Text(
              listmonItemModelObj.friTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12.copyWith(
                letterSpacing: getHorizontalSize(
                  0.4,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 29,
          ),
          child: Obx(
            () => Text(
              listmonItemModelObj.satTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12.copyWith(
                letterSpacing: getHorizontalSize(
                  0.4,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 26,
          ),
          child: Obx(
            () => Text(
              listmonItemModelObj.sunTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular12.copyWith(
                letterSpacing: getHorizontalSize(
                  0.4,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
