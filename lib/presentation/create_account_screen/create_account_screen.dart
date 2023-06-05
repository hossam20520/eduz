import 'controller/create_account_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/core/utils/validation_functions.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateAccountScreen extends GetWidget<CreateAccountController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA70001,
            body: SingleChildScrollView(

                // scrollDirection: Axis.vertical,
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
                                          top: 26,
                                          right: 23,
                                          bottom: 26),
                                      decoration: AppDecoration.fillYellow700,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                height: getVerticalSize(15),
                                                width: getHorizontalSize(9),
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                }),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage1,
                                                height: getVerticalSize(143),
                                                width: getHorizontalSize(180),
                                                alignment: Alignment.center,
                                                margin: getMargin(
                                                    top: 2, bottom: 13))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Text("msg_create_a_new_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratLight20Black900)),
                              Padding(
                                  padding:
                                      getPadding(left: 25, top: 26, right: 25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(165),
                                            padding: getPadding(
                                                left: 17,
                                                top: 15,
                                                right: 17,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .outlineIndigo300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder11),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgUser,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          top: 1, bottom: 1)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 14),
                                                      child: Text(
                                                          "lbl_first_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratLight18Indigo300))
                                                ])),
                                        Container(
                                            width: getHorizontalSize(165),
                                            margin: getMargin(left: 10),
                                            padding: getPadding(
                                                left: 17,
                                                top: 15,
                                                right: 17,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .outlineIndigo300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder11),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgUser,
                                                      height: getSize(20),
                                                      width: getSize(20),
                                                      margin: getMargin(
                                                          top: 1, bottom: 1)),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 14),
                                                      child: Text(
                                                          "lbl_last_name".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratLight18Indigo300))
                                                ]))
                                      ])),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "lbl_email".tr,
                                  margin:
                                      getMargin(left: 25, top: 16, right: 25),
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 29,
                                          top: 17,
                                          right: 14,
                                          bottom: 17),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgMail)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.mobilenumberController,
                                  hintText: "lbl_mobile_number".tr,
                                  margin:
                                      getMargin(left: 25, top: 16, right: 25),
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
                              Obx(() => CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 25, top: 16, right: 25),
                                  padding: TextFormFieldPadding.PaddingT16_1,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 29,
                                          top: 17,
                                          right: 25,
                                          bottom: 17),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgLock)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 17,
                                              right: 28,
                                              bottom: 17),
                                          child: CustomImageView(
                                              svgPath: controller
                                                      .isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText:
                                      controller.isShowPassword.value)),
                              CustomButton(
                                  height: getVerticalSize(62),
                                  text: "lbl_create_account".tr,
                                  margin:
                                      getMargin(left: 16, top: 18, right: 18)),
                              Padding(
                                  padding:
                                      getPadding(left: 32, top: 20, right: 19),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 9, bottom: 9),
                                            child: SizedBox(
                                                width: getHorizontalSize(65),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .black90001))),
                                        Padding(
                                            padding: getPadding(left: 13),
                                            child: Text(
                                                "msg_or_create_account".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratLight16Black90001)),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, bottom: 9),
                                            child: SizedBox(
                                                width: getHorizontalSize(78),
                                                child: Divider(
                                                    height: getVerticalSize(1),
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color: ColorConstant
                                                        .black90001,
                                                    indent:
                                                        getHorizontalSize(13))))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 26, top: 13, right: 24),
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
                                  padding: getPadding(top: 15, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_have_an_account2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.indigo300,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w300)),
                                        TextSpan(
                                            text: "lbl_log_in2".tr,
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

  onTapImgArrowleft() {
    Get.back();
  }
}
