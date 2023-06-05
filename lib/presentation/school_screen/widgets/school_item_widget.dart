import '../controller/school_controller.dart';
import '../models/school_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SchoolItemWidget extends StatelessWidget {
  SchoolItemWidget(this.schoolItemModelObj);

  SchoolItemModel schoolItemModelObj;

  var controller = Get.find<SchoolController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(55),
          width: getHorizontalSize(
            72,
          ),
          margin: getMargin(
            right: 3,
          ),
          padding: getPadding(
            left: 7,
            top: 9,
            right: 7,
            bottom: 8,
          ),
          decoration: AppDecoration.txtFillPurpleA400.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder14,
          ),
          child: Text(
            "lbl_supplies".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterRegular14,
          ),
        ),
      ),
    );
  }
}
