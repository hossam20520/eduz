import 'controller/schools_facilities_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_searchview.dart';

class SchoolsFacilitiesScreen extends GetWidget<SchoolsFacilitiesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              background: Colors.transparent,
              height: getVerticalSize(
                40,
              ),
              leadingWidth: 38,
              leading: AppbarImage(
                onTap: () {
                  onTapImgArrowleft();
                },
                height: getVerticalSize(
                  23,
                ),
                width: getHorizontalSize(
                  50,
                ),
                svgPath: ImageConstant.imgArrowleftBlack9001,
                margin: getMargin(
                  left: 7,
                  top: 10,
                  bottom: 17,
                ),
              ),
              centerTitle: true,
            ),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 0, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftYellow700,
                          height: getVerticalSize(22),
                          width: getHorizontalSize(64),
                          alignment: Alignment.centerRight,
                          margin: getMargin(top: 13)),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(left: 64, right: 64),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgClippathgroup,
                                    height: getVerticalSize(82),
                                    width: getHorizontalSize(78),
                                    margin: getMargin(left: 6)),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_ameerican".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold17),
                                          Text("lbl_international".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold17),
                                          Text("msg_schools_in_egypt".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterBold17)
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(11),
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: ColorConstant.orangeA200)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage15,
                          height: getVerticalSize(157),
                          width: getHorizontalSize(390)),
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 33, top: 9, right: 33, bottom: 9),
                          decoration: AppDecoration.fillGray50fc,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtInfo();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 5, bottom: 5, right: 5),
                                            child: Text("lbl_info".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterRegular14Gray800)))),
                                Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtFacilities();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 5, bottom: 5, right: 5),
                                            child: Text("lbl_facilities".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterRegular14)))),
                                Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtActivities();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 5, bottom: 5, right: 5),
                                            child: Text("lbl_activities".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterRegular14Gray800)))),
                                Expanded(
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtReviews();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 5, bottom: 5, right: 5),
                                            child: Text("lbl_reviews".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtInterRegular14Gray800))))
                              ])),
                      Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Description:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Enter your text in the text area below:',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(height: 16),
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 48, right: 41, bottom: 58),
                decoration: AppDecoration.fillWhiteA700,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                          padding: getPadding(left: 25, bottom: 5, right: 10),
                          child: CustomImageView(
                              width: 40, svgPath: ImageConstant.call)),
                      CustomButton(
                          onTap: () => goToForm(),
                          height: getVerticalSize(39),
                          width: getHorizontalSize(122),
                          text: "lbl_apply_now".tr,
                          margin: getMargin(left: 20),
                          shape: ButtonShape.RoundedBorder16,
                          padding: ButtonPadding.PaddingAll9,
                          fontStyle: ButtonFontStyle.InterBold16),
                      CustomImageView(
                          svgPath: ImageConstant.imgShareBlueGray400,
                          height: getVerticalSize(20),
                          width: getHorizontalSize(16),
                          margin: getMargin(left: 20, top: 5, bottom: 13)),
                      CustomImageView(
                          svgPath: ImageConstant.imgFavoriteBlack900,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(left: 14, top: 5, bottom: 10))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtInfo() {
    Get.toNamed(
      AppRoutes.schoolsInfoScreen,
    );
  }

  onTapTxtFacilities() {
    Get.toNamed(
      AppRoutes.schoolsFacilitiesScreen,
    );
  }

  goToForm() {
    Get.offNamed(
      AppRoutes.formschoolScreen,
    );
  }

  onTapTxtActivities() {
    Get.offNamed(
      AppRoutes.schoolsActivitiesScreen,
    );
  }

  onTapTxtReviews() {
    Get.offNamed(
      AppRoutes.schoolsReviewsScreen,
    );
  }
}
