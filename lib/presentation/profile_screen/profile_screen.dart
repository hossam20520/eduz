import 'controller/profile_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/core/utils/validation_functions.dart';
import 'models/profile_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstant.whiteA700,
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
                                    left: 25, top: 8, right: 25, bottom: 8),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowleftBlueGray90003,
                                          height: getSize(24),
                                          width: getSize(24),
                                          margin: getMargin(top: 9),
                                          onTap: () {
                                            onTapImgArrowleft();
                                          }),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage7120x120,
                                          height: getSize(120),
                                          width: getSize(120),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(60)),
                                          margin: getMargin(left: 97)),
                                      Container(
                                          width: getHorizontalSize(57),
                                          margin: getMargin(left: 129, top: 6),
                                          padding: getPadding(
                                              left: 8,
                                              top: 1,
                                              right: 8,
                                              bottom: 1),
                                          decoration: AppDecoration
                                              .txtFillPurpleA400
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCircleBorder10),
                                          child: Text("lbl_change".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtTajawalRegular13)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(top: 8),
                                              child: Text(
                                                  "lbl_amira_el_gabre".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtTajawalRegular32))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "msg_amiraelgabre_gmail_com"
                                                      .tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtTajawalRegular14)))
                                    ]))),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_profile_info".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratLight20Black900)),
                        Padding(
                            padding: getPadding(left: 27, top: 26, right: 23),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: getHorizontalSize(165),
                                      padding: getPadding(
                                          left: 17,
                                          top: 15,
                                          right: 17,
                                          bottom: 15),
                                      decoration: AppDecoration.outlineIndigo300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder11),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgUser,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 14),
                                                child: Text("lbl_first_name".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
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
                                      decoration: AppDecoration.outlineIndigo300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder11),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgUser,
                                                height: getSize(20),
                                                width: getSize(20),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            Padding(
                                                padding: getPadding(left: 14),
                                                child: Text("lbl_last_name".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtMontserratLight18Indigo300))
                                          ]))
                                ])),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.emailoneController,
                            hintText: "lbl_email".tr,
                            margin: getMargin(left: 27, top: 16, right: 23),
                            textInputType: TextInputType.emailAddress,
                            prefix: Container(
                                margin: getMargin(
                                    left: 29, top: 17, right: 14, bottom: 17),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgMail)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(54)),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.mobilenumberController,
                            hintText: "lbl_mobile_number".tr,
                            margin: getMargin(left: 27, top: 16, right: 23),
                            textInputType: TextInputType.phone,
                            prefix: Container(
                                margin: getMargin(
                                    left: 29, top: 17, right: 14, bottom: 17),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCall)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(54)),
                            validator: (value) {
                              if (!isValidPhone(value)) {
                                return "Please enter valid phone number";
                              }
                              return null;
                            }),
                        Obx(() => CustomTextFormField(
                            focusNode: FocusNode(),
                            autofocus: true,
                            controller: controller.passwordController,
                            hintText: "lbl_password".tr,
                            margin: getMargin(left: 27, top: 16, right: 23),
                            padding: TextFormFieldPadding.PaddingT16_1,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            prefix: Container(
                                margin: getMargin(
                                    left: 29, top: 17, right: 14, bottom: 17),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgLock)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(54)),
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
                                        svgPath: controller.isShowPassword.value
                                            ? ImageConstant.imgEye
                                            : ImageConstant.imgEye))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(54)),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            isObscureText: controller.isShowPassword.value)),
                        CustomButton(
                            height: getVerticalSize(62),
                            text: "lbl_edit".tr,
                            margin: getMargin(
                                left: 18, top: 24, right: 14, bottom: 5))
                      ])))),
    ));
  }

  ///Handling route based on bottom click actions

  ///Handling page based on route

  onTapImgArrowleft() {
    Get.back();
  }
}
