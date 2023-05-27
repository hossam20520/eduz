import '../controller/calander_controller.dart';
import '../models/listrectangle42_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle42ItemWidget extends StatelessWidget {
  Listrectangle42ItemWidget(this.listrectangle42ItemModelObj);

  Listrectangle42ItemModel listrectangle42ItemModelObj;

  var controller = Get.find<CalanderController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 4,
        right: 4,
      ),
      decoration: AppDecoration.fillGray10003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: getPadding(
                    all: 3,
                  ),
                  decoration: AppDecoration.fillPurple100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: getSize(
                          18,
                        ),
                        width: getSize(
                          18,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.purpleA400,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              9,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 10,
                  ),
                  child: SizedBox(
                    height: getVerticalSize(
                      50,
                    ),
                    child: VerticalDivider(
                      width: getHorizontalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.purple100,
                      indent: getHorizontalSize(
                        4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 6,
              top: 8,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_19_february_2023".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratLight13Black900,
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                  ),
                  child: Text(
                    "lbl_10_00_am".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanSemiBold13,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 3,
                  ),
                  child: Text(
                    "msg_american_language".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratRomanRegular1424,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 2,
                    top: 1,
                  ),
                  child: Text(
                    "msg_makeup_nail_spa".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratLight10,
                  ),
                ),
              ],
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
              top: 3,
              bottom: 50,
            ),
          ),
        ],
      ),
    );
  }
}
