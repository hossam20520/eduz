import '../controller/favorite_controller.dart';
import '../models/calander_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalanderItemWidget extends StatelessWidget {
  CalanderItemWidget(this.calanderItemModelObj);

  CalanderItemModel calanderItemModelObj;

  var controller = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray20001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL38,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle4219,
            height: getSize(
              77,
            ),
            width: getSize(
              77,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                38,
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              80,
            ),
            margin: getMargin(
              left: 15,
              top: 15,
              bottom: 19,
            ),
            child: Text(
              "msg_ameerican_international".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtTajawalRegular12,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgClock,
            height: getVerticalSize(
              24,
            ),
            width: getHorizontalSize(
              22,
            ),
            margin: getMargin(
              top: 4,
              right: 7,
              bottom: 49,
            ),
          ),
        ],
      ),
    );
  }
}
