import '../controller/kindergarten_controller.dart';
import '../models/kindergarten_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class KindergartenItemWidget extends StatelessWidget {
  KindergartenItemWidget(this.kindergartenItemModelObj);

  KindergartenItemModel kindergartenItemModelObj;

  var controller = Get.find<KindergartenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        151,
      ),
      width: getHorizontalSize(
        128,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse477,
            height: getSize(
              128,
            ),
            width: getSize(
              128,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                64,
              ),
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse477,
                  height: getSize(
                    128,
                  ),
                  width: getSize(
                    128,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      64,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                    right: 28,
                  ),
                  child: Text(
                    "lbl_paradise".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
