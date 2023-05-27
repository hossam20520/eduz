import '../controller/favorite_controller.dart';
import '../models/favorite_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(this.favoriteItemModelObj);

  FavoriteItemModel favoriteItemModelObj;

  var controller = Get.find<FavoriteController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray20001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangleUser,
            height: getVerticalSize(
              98, ),
            width: getHorizontalSize(
              96,
            ),
          ),
          Container(
            width: getHorizontalSize(
              93,
            ),
            margin: getMargin(
              left: 21,
              top: 22,
              bottom: 25,
            ),
            child: Text(
              "msg_ameerican_international".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtTajawalRegular14Black900,
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgClock,
            height: getVerticalSize(
              24,
            ),
            width: getHorizontalSize(
              23,
            ),
            margin: getMargin(
              bottom: 74,
            ),
          ),
        ],
      ),
    );
  }
}
