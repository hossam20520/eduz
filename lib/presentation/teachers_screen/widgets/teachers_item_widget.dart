import '../controller/teachers_controller.dart';
import '../models/teachers_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TeachersItemWidget extends StatelessWidget {
  TeachersItemWidget(this.teachersItemModelObj);

  TeachersItemModel teachersItemModelObj;

  var controller = Get.find<TeachersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL84,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getSize(
              190,
            ),
            width: getSize(
              190,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle4236,
                  height: getSize(
                    190,
                  ),
                  width: getSize(
                    190,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      84,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: getPadding(
                      right: 6,
                      bottom: 3,
                    ),
                    child: Text(
                      "lbl_k_g".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: SizedBox(
              width: getHorizontalSize(
                138,
              ),
              child: Divider(
                height: getVerticalSize(
                  2,
                ),
                thickness: getVerticalSize(
                  2,
                ),
                color: ColorConstant.whiteA700,
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: getPadding(
              left: 17,
              top: 8,
              right: 8,
              bottom: 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    left: 6,
                    bottom: 6,
                  ),
                  child: Text(
                    "lbl_maha_ahmed".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular11PurpleA14,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 19,
                    bottom: 6,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_g".tr,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_8_9".tr,
                          style: TextStyle(
                            color: ColorConstant.gray400,
                            fontSize: getFontSize(
                              11,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "lbl3".tr,
                          style: TextStyle(
                            color: ColorConstant.gray40001,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
