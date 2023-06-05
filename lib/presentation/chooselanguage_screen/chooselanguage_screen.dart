import 'controller/chooselanguage_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChooselanguageScreen extends GetWidget<ChooselanguageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.yellow700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(top: 15),
                      ),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("msg_welcome_to_check".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold24)),
                      Padding(
                          padding: getPadding(top: 36),
                          child: Text("msg_select_your_language".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratLight20)),
                      Obx(() => InkWell(
                            onTap: controller
                                .selectEnglish, // Call the switchLanguage method on tap
                            child: Container(
                                margin: getMargin(left: 9, top: 24, right: 9),
                                padding: getPadding(
                                    left: 32, top: 13, right: 32, bottom: 13),
                                decoration: controller.chooselanguageModelObj
                                        .value.isEnglishSelected
                                    ? AppDecoration.fillPurpleA400.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11)
                                    : AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 1, top: 2),
                                          child: Text("lbl_english".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: controller
                                                      .chooselanguageModelObj
                                                      .value
                                                      .isEnglishSelected
                                                  ? AppStyle
                                                      .txtMontserratRegular20
                                                  : AppStyle
                                                      .txtMontserratRegular20Black)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCheckmark,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(top: 3, bottom: 3))
                                    ])),
                          )),
                      Obx(() => InkWell(
                            onTap: controller
                                .selectArabic, // Call the switchLanguage method on tap
                            child: Container(
                                margin: getMargin(left: 9, top: 24, right: 9),
                                padding: getPadding(
                                    left: 32, top: 13, right: 32, bottom: 13),
                                decoration: controller.chooselanguageModelObj
                                        .value.isEnglishSelected
                                    ? AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11)
                                    : AppDecoration.fillPurpleA400.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder11),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 1, top: 2),
                                          child: Text("lbl_arabic".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: controller
                                                      .chooselanguageModelObj
                                                      .value
                                                      .isEnglishSelected
                                                  ? AppStyle
                                                      .txtMontserratRegular20Black
                                                  : AppStyle
                                                      .txtMontserratRegular20)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCheckmark,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(top: 3, bottom: 3))
                                    ])),
                          )),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(62),
                          text: "lbl_let_s_go".tr,
                          onTap: () {
                            onTapLetsgo();
                          }),
                      Container(
                          width: getHorizontalSize(319),
                          margin: getMargin(left: 18, top: 34, right: 20),
                          child: Text("msg_you_can_change_language".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtMontserratLight16))
                    ]))));
  }

  onTapLetsgo() {
    Get.toNamed(
      AppRoutes.onbordingOneScreen,
    );
  }
}
