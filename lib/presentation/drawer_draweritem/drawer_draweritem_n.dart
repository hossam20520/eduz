import '../../widgets/custom_icon_button.dart';
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
          child: SingleChildScrollView(

              // scrollDirection: Axis.vertical,
              child: Container(
            width: getHorizontalSize(
              314,
            ),
            padding: getPadding(
              all: 24,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 62,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img81,
                        height: getSize(
                          48,
                        ),
                        width: getSize(
                          48,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            24,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: getPadding(
                            left: 12,
                            top: 9,
                            bottom: 3,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_ashfak_sayem".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterSemiBold15,
                              ),
                              Text(
                                "msg_ashfaksayem_gmail_com".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 32,
                  ),
                  padding: getPadding(
                    all: 12,
                  ),
                  decoration: AppDecoration.fillPurpleA400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgCalendar,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 2,
                          bottom: 2,
                        ),
                        child: Text(
                          "lbl_calendar".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15WhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 20,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgLockYellow700,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 3,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_my_cart".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                        height: getVerticalSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        text: "lbl_2".tr,
                        margin: getMargin(
                          top: 2,
                          bottom: 2,
                        ),
                        variant: ButtonVariant.FillRed200,
                        shape: ButtonShape.RoundedBorder4,
                        fontStyle: ButtonFontStyle.InterSemiBold10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 32,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgUserYellow700,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 2,
                          bottom: 2,
                        ),
                        child: Text(
                          "lbl_account".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 32,
                  ),
                  child: InkWell(
                      onTap: controller
                          .OpenShop, // Call the switchLanguage method on tap
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.shop,
                            height: getSize(
                              24,
                            ),
                            width: getSize(
                              24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 3,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_shop".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold15Bluegray70001,
                            ),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: getPadding(
                    left: 6,
                    top: 32,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.Notia,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 1,
                          bottom: 3,
                        ),
                        child: Text(
                          "lbl_notifications".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
                        ),
                      ),
                      Spacer(),
                      CustomButton(
                        height: getVerticalSize(
                          20,
                        ),
                        width: getSize(
                          20,
                        ),
                        text: "lbl_2".tr,
                        margin: getMargin(
                          top: 2,
                          bottom: 2,
                        ),
                        variant: ButtonVariant.FillGreenA100,
                        shape: ButtonShape.RoundedBorder4,
                        fontStyle: ButtonFontStyle.InterSemiBold10,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 32,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.fav,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 1,
                          bottom: 3,
                        ),
                        child: Text(
                          "lbl_favorite".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 32,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgReply,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 3,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_language".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 32,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgInfo,
                        height: getSize(
                          24,
                        ),
                        width: getSize(
                          24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 3,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_support".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 12,
                    top: 32,
                    bottom: 10,
                  ),
                  child: Row(
                    children: [
                      CustomIconButton(
                        height: 24,
                        width: 24,
                        variant: IconButtonVariant.FillWhiteA700,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgSubtract,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 6,
                          top: 3,
                          bottom: 1,
                        ),
                        child: Text(
                          "lbl_logout".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold15Bluegray70001,
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
