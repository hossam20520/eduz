import '../controller/universities_controller.dart';
import '../models/universities_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class UniversitiesItemWidget extends StatelessWidget {
  UniversitiesItemWidget(this.universitiesItemModelObj);

  UniversitiesItemModel universitiesItemModelObj;

  var controller = Get.find<UniversitiesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          213,
        ),
        width: getHorizontalSize(
          161,
        ),
        decoration: AppDecoration.outlineBluegray1003f,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getVerticalSize(
                  36,
                ),
                width: getHorizontalSize(
                  159,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.orangeA100,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      getHorizontalSize(
                        25,
                      ),
                    ),
                    bottomRight: Radius.circular(
                      getHorizontalSize(
                        25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  left: 1,
                  top: 6,
                  right: 1,
                  bottom: 6,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup3525,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      onTap: () => goToInfo(),
                      imagePath: ImageConstant.imgClippathgroup,
                      height: getVerticalSize(
                        113,
                      ),
                      width: getHorizontalSize(
                        102,
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      height: getVerticalSize(
                        37,
                      ),
                      width: getHorizontalSize(
                        167,
                      ),
                      margin: getMargin(
                        top: 19,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: getPadding(
                                left: 50,
                                top: 4,
                                right: 50,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillYellow700,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_kambridg".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold11,
                                    ),
                                  ),
                                  Text(
                                    "lbl_university".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold11,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SizedBox(
                              width: getHorizontalSize(
                                5,
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  2,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: ColorConstant.whiteA700,
                                endIndent: getHorizontalSize(
                                  21,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 17,
                        right: 15,
                        top: 13,
                        bottom: 3,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Align children from the start of the row
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocationPurpleA4001,
                            height: getVerticalSize(
                              13,
                            ),
                            width: getHorizontalSize(
                              12,
                            ),
                            margin: getMargin(top: 2, right: 5, left: 5),
                          ),
                          Text(
                            "lbl_4_8_mil".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular10,
                          ),
                          SizedBox(width: 30),
                          CustomImageView(
                            svgPath: ImageConstant.imgStarWhiteA700,
                            height: getVerticalSize(
                              15,
                            ),
                            width: getHorizontalSize(
                              16,
                            ),
                            margin: getMargin(left: 6, right: 6),
                          ),
                          Text(
                            "lbl_4_8".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterRegular10Bluegray900,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  goToInfo() {
    Get.toNamed(
      AppRoutes.schoolsInfoScreen,
    );
  }
}
