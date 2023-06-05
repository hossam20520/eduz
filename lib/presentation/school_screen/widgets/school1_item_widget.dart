import '../controller/school_controller.dart';
import '../models/school1_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class School1ItemWidget extends StatelessWidget {
  School1ItemWidget(this.school1ItemModelObj);

  School1ItemModel school1ItemModelObj;

  var controller = Get.find<SchoolController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 300,
        decoration: AppDecoration.outlineGray300.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgClippathgroup,
              height: getVerticalSize(
                82,
              ),
              width: getHorizontalSize(
                78,
              ),
              margin: getMargin(
                top: 5,
              ),
            ),
            Container(
              width: getHorizontalSize(
                129,
              ),
              margin: getMargin(
                top: 3,
              ),
              padding: getPadding(
                left: 13,
                top: 3,
                right: 13,
                bottom: 3,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup3043,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_ameerican".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold10,
                  ),
                  Text(
                    "lbl_international".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold10,
                  ),
                  Text(
                    "lbl_schools".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterBold10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 7,
                        bottom: 2,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPurpleA4001,
                            height: getVerticalSize(
                              9,
                            ),
                            width: getHorizontalSize(
                              7,
                            ),
                            margin: getMargin(
                              top: 1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 3,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_4_8_mil".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular8,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getVerticalSize(
                              8,
                            ),
                            width: getHorizontalSize(
                              9,
                            ),
                            margin: getMargin(
                              left: 33,
                              top: 1,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 1,
                            ),
                            child: Text(
                              "lbl_4_8".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular8Bluegray900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
