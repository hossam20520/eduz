import 'controller/account_type_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AccountTypeScreen extends GetWidget<AccountTypeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.yellow700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("lbl_eduz".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold24)),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Text("lbl_account_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold24)),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Text("msg_select_your_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratLight20)),
                      Obx(() => InkWell(
                          onTap: controller
                              .selectParent, // Call the switchLanguage method on tap
                          child: Container(
                              margin: getMargin(top: 24, right: 1),
                              padding: getPadding(
                                  left: 40, top: 14, right: 40, bottom: 14),
                              decoration: controller
                                      .accountTypeModelObj.value.parent
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
                                        padding: getPadding(left: 5),
                                        child: Text("lbl_parent".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: controller
                                                    .accountTypeModelObj
                                                    .value
                                                    .parent
                                                ? AppStyle
                                                    .txtMontserratRegular20
                                                : AppStyle
                                                    .txtMontserratRegular20Black)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(top: 2, bottom: 2))
                                  ])))),
                      Obx(() => InkWell(
                          onTap: controller.selectTeacher,
                          child: Container(
                              margin: getMargin(top: 31, right: 1),
                              padding: getPadding(
                                  left: 40, top: 14, right: 40, bottom: 14),
                              decoration: controller
                                      .accountTypeModelObj.value.parent
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
                                        padding: getPadding(left: 3),
                                        child: Text("lbl_techer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: controller
                                                    .accountTypeModelObj
                                                    .value
                                                    .parent
                                                ? AppStyle
                                                    .txtMontserratRegular20Black
                                                : AppStyle
                                                    .txtMontserratRegular20)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCheckmark,
                                        height: getSize(20),
                                        width: getSize(20),
                                        margin: getMargin(top: 2, bottom: 2))
                                  ])))),
                      Padding(
                          padding: getPadding(top: 49),
                          child: Text("lbl_skip".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratLight24)),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(62),
                          text: "lbl_next".tr,
                          onTap: () {
                            onTapNext();
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

  onTapNext() {
    Get.toNamed(
      AppRoutes.chooseAuthScreen,
    );
  }
}
