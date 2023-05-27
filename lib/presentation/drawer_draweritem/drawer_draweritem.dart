import 'controller/drawer_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart' hide DrawerController;

class DrawerDraweritem extends StatelessWidget {
  DrawerDraweritem(this.controller);

  DrawerController controller;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double drawerWidthPercentage = 0.7; // 50% of the screen width
    double drawerWidth = screenWidth * drawerWidthPercentage;

    return Container(
        width: drawerWidth,
        child: Drawer(
      child:
        SingleChildScrollView(

        // scrollDirection: Axis.vertical,
        child:  Container(
        width: getHorizontalSize(
          280,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              child: Container(
                padding: getPadding(
                  left: 42,
                  top: 26,
                  right: 42,
                  bottom: 26,
                ),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        left: 25,
                        top: 11,
                      ),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder65,
                      ),
                      child: Container(
                        height: getSize(
                          132,
                        ),
                        width: getSize(
                          132,
                        ),
                        padding: getPadding(
                          all: 5,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder65,
                        ),
                        child:     CustomImageView(
                          imagePath: ImageConstant.imageUser,
                          height: getSize(
                            121,
                          ),
                          width: getSize(
                            20,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              60,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          top: 17,
                        ),
                        child: Text(
                          "lbl_amira_mohamed".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratFontBlack,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 16,
                      ),
                      child: Text(
                        "lbl_amira_gmail_com".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtMontserratFontBlack,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: getMargin(
                top: 13,
              ),
              padding: getPadding(
                left: 15,
                top: 14,
                right: 15,
                bottom: 14,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgUserGray10002,
                    height: getVerticalSize(
                      28,
                    ),
                    width: getHorizontalSize(
                      31,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 43,
                      top: 2,
                    ),
                    child: Text(
                      "lbl_account".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratFontBlack,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 16,
              ),
              padding: getPadding(
                left: 17,
                top: 9,
                right: 17,
                bottom: 9,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgNotification,
                    height: getVerticalSize(
                      28,
                    ),
                    width: getHorizontalSize(
                      27,
                    ),
                    margin: getMargin(
                      top: 6,
                      bottom: 4,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 29,
                      top: 6,
                      bottom: 6,
                    ),
                    child: Text(
                      "lbl_notification".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratFontBlack,
                    ),
                  ),

                  Expanded(child:  CustomButton(
                    height: getVerticalSize(
                      36,
                    ),
                    width: getHorizontalSize(
                      39,
                    ),
                    text: "lbl_11".tr,
                    margin: getMargin(
                      left: 23,
                      top: 2,
                    ),
                    shape: ButtonShape.CircleBorder18,
                    padding: ButtonPadding.PaddingAll5,
                  )),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 16,
              ),
              padding: getPadding(
                all: 13,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCalendar,
                    height: getVerticalSize(
                      29,
                    ),
                    width: getHorizontalSize(
                      32,
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 41,
                      top: 3,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_calander".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratFontBlack,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 16,
              ),
              padding: getPadding(
                left: 19,
                top: 12,
                right: 19,
                bottom: 12,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgClock,
                    height: getVerticalSize(
                      28,
                    ),
                    width: getHorizontalSize(
                      30,
                    ),
                    margin: getMargin(
                      top: 2,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 33,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_language".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratFontBlack,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 16,
              ),
              padding: getPadding(
                left: 14,
                top: 12,
                right: 14,
                bottom: 12,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgQuestion,
                    height: getVerticalSize(
                      28,
                    ),
                    width: getHorizontalSize(
                      29,
                    ),
                    margin: getMargin(
                      top: 2,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 67,
                      top: 5,
                    ),
                    child: Text(
                      "lbl_help".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratFontBlack,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: getMargin(
                top: 16,
                bottom: 134,
              ),
              padding: getPadding(
                left: 17,
                top: 11,
                right: 17,
                bottom: 11,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowleftRedA700,
                    height: getVerticalSize(
                      26,
                    ),
                    width: getHorizontalSize(
                      21,
                    ),
                    margin: getMargin(
                      top: 5,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 59,
                      top: 6,
                    ),
                    child: Text(
                      "lbl_logout".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold20RedA700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
