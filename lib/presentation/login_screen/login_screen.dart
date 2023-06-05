import 'controller/login_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/core/utils/validation_functions.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA70001,
            body: SingleChildScrollView(
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: double.maxFinite,
                                      padding: getPadding(
                                          left: 23,
                                          top: 12,
                                          right: 23,
                                          bottom: 12),
                                      decoration: AppDecoration.fillYellow700,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(17),
                                                width: getHorizontalSize(9),
                                                margin: getMargin(top: 14),
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                }),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage2,
                                                height: getVerticalSize(173),
                                                width: getHorizontalSize(266),
                                                alignment: Alignment.center,
                                                margin: getMargin(top: 19))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 76),
                                  child: Text("msg_log_in_to_your_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratLight20Indigo300)),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.mobilenumberController,
                                  hintText: "lbl_mobile_number".tr,
                                  margin:
                                      getMargin(left: 25, top: 24, right: 25),
                                  textInputType: TextInputType.phone,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 29,
                                          top: 17,
                                          right: 14,
                                          bottom: 17),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgCall)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.mobilenumberController1,
                                  hintText: "lbl_12345678".tr,
                                  margin:
                                      getMargin(left: 25, top: 16, right: 25),
                                  padding: TextFormFieldPadding.PaddingT16_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.phone,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 29,
                                          top: 17,
                                          right: 14,
                                          bottom: 17),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 17,
                                          right: 23,
                                          bottom: 17),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSettings)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 28, top: 29),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRegular14))),
                              CustomButton(
                                  onTap: GotoHome,
                                  height: getVerticalSize(62),
                                  text: "lbl_login2".tr,
                                  margin:
                                      getMargin(left: 16, top: 25, right: 16)),
                              Padding(
                                  padding:
                                      getPadding(left: 21, top: 36, right: 29),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 8, bottom: 10),
                                            child: SizedBox(
                                                width: getHorizontalSize(99),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .black90001))),
                                        Padding(
                                            padding: getPadding(left: 15),
                                            child: Text("lbl_or_log_in_with".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratLight16Black90001)),
                                        Padding(
                                            padding:
                                                getPadding(top: 8, bottom: 10),
                                            child: SizedBox(
                                                width: getHorizontalSize(114),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .black90001,
                                                    indent:
                                                        getHorizontalSize(15))))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 24, top: 8, right: 26),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomButton(
                                            height: getVerticalSize(55),
                                            width: getHorizontalSize(165),
                                            text: "lbl_google".tr,
                                            variant:
                                                ButtonVariant.OutlineIndigo300,
                                            padding: ButtonPadding.PaddingT16,
                                            fontStyle: ButtonFontStyle
                                                .MontserratRegular18,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 14),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgBrands))),
                                        Container(
                                            height: getVerticalSize(55),
                                            width: getHorizontalSize(165),
                                            margin: getMargin(left: 9),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  55),
                                                          width:
                                                              getHorizontalSize(
                                                                  164),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .whiteA700))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 12,
                                                              top: 15,
                                                              right: 12,
                                                              bottom: 15),
                                                          decoration: AppDecoration
                                                              .outlineIndigo300
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder11),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFacebook,
                                                                height:
                                                                    getSize(24),
                                                                width: getSize(
                                                                    24)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "lbl_facebook"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratRegular18))
                                                          ])))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 22, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigo300,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w300)),
                                        TextSpan(
                                            text: "lbl_create_one".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigo700,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                decoration:
                                                    TextDecoration.underline))
                                      ]),
                                      textAlign: TextAlign.left))
                            ]))))));
  }

  GotoHome() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
