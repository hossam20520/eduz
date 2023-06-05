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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Container(
            height: getSize(
              100,
            ),
            width: getSize(
              100,
            ),
            padding: getPadding(
              left: 7,
              top: 6,
              right: 7,
              bottom: 6,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.20), // shadow color
                  spreadRadius: 100, // spread radius
                  blurRadius: 10, // blur radius
                  offset: Offset(1, 2), // changes position of shadow
                ),
              ],
            ),
            child: Stack(
              children: [
                CustomImageView(
                  radius: BorderRadius.circular(77),
                  imagePath: ImageConstant.imgClippathgroup,
                  height: getVerticalSize(
                    100,
                  ),
                  width: getHorizontalSize(
                    100,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 8,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_ameerican".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold12,
              ),
              Text(
                "lbl_international".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold12,
              ),
              Text(
                "lbl_schools".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterBold12,
              ),
              Text(
                "lbl_ameerican_inter".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular10Gray400,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 16,
            bottom: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgLocationPurpleA400,
                height: getVerticalSize(
                  18,
                ),
                width: getHorizontalSize(
                  13,
                ),
                margin: getMargin(
                  left: 4,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Text(
                  "lbl_4_8_mil".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular10Gray80001,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
