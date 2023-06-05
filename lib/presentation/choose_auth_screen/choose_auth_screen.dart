import 'controller/choose_auth_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChooseAuthScreen extends GetWidget<ChooseAuthController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.yellow700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 36,
            right: 16,
            bottom: 36,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgImage1,
                height: getVerticalSize(
                  143,
                ),
                width: getHorizontalSize(
                  180,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 139,
                ),
              ),
              InkWell(
                  onTap: controller.GotoLogin,
                  child: Container(
                    margin: getMargin(
                      left: 1,
                      top: 26,
                    ),
                    padding: getPadding(
                      left: 40,
                      top: 13,
                      right: 40,
                      bottom: 13,
                    ),
                    decoration: AppDecoration.fillPurpleA400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder11,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 3,
                          ),
                          child: Text(
                            "lbl_login2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRegular20,
                          ),
                        ),
                      ],
                    ),
                  )),
              InkWell(
                onTap: controller.GoToRegister,
                child: Container(
                  margin: getMargin(
                    left: 1,
                    top: 26,
                  ),
                  padding: getPadding(
                    left: 40,
                    top: 13,
                    right: 40,
                    bottom: 13,
                  ),
                  decoration: AppDecoration.fillPurpleA400.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 3,
                        ),
                        child: Text(
                          "lbl_register2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratRegular20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 28,
                  right: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 9,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          65,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.black90001,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                      ),
                      child: Text(
                        "msg_or_create_account".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratLight16Black900,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 9,
                      ),
                      child: SizedBox(
                        width: getHorizontalSize(
                          78,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.black90001,
                          indent: getHorizontalSize(
                            13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: getPadding(
            left: 17,
            right: 13,
            bottom: 26,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                width: getHorizontalSize(
                  171,
                ),
                focusNode: FocusNode(),
                controller: controller.buttonController,
                hintText: "lbl_google".tr,
                variant: TextFormFieldVariant.OutlineIndigo300,
                fontStyle: TextFormFieldFontStyle.MontserratRegular18,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: getMargin(
                    left: 28,
                    top: 15,
                    right: 14,
                    bottom: 15,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgBrands,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: getVerticalSize(
                    55,
                  ),
                ),
              ),
              CustomButton(
                height: getVerticalSize(
                  55,
                ),
                width: getHorizontalSize(
                  180,
                ),
                text: "lbl_facebook".tr,
                margin: getMargin(
                  left: 8,
                ),
                variant: ButtonVariant.OutlineIndigo300,
                padding: ButtonPadding.PaddingT16,
                fontStyle: ButtonFontStyle.MontserratRegular18,
                prefixWidget: Container(
                  margin: getMargin(
                    right: 14,
                  ),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgFacebook,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
