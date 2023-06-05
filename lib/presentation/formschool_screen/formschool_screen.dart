import 'controller/formschool_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/core/utils/validation_functions.dart';
import 'package:eduz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FormschoolScreen extends GetWidget<FormschoolController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        padding:
                                            getPadding(top: 22, bottom: 22),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftBlack9001,
                                                  height: getVerticalSize(14),
                                                  width: getHorizontalSize(24),
                                                  margin: getMargin(
                                                      left: 20, top: 4),
                                                  onTap: () {
                                                    onTapImgArrowleft();
                                                  }),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleftYellow700,
                                                  height: getVerticalSize(22),
                                                  width: getHorizontalSize(64),
                                                  alignment:
                                                      Alignment.centerRight,
                                                  margin: getMargin(top: 13)),
                                              Container(
                                                  width: double.maxFinite,
                                                  padding: getPadding(
                                                      left: 64, right: 64),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgClippathgroup,
                                                            height:
                                                                getVerticalSize(
                                                                    82),
                                                            width:
                                                                getHorizontalSize(
                                                                    78),
                                                            margin: getMargin(
                                                                left: 6)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                bottom: 15),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      "lbl_ameerican"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterBold17),
                                                                  Text(
                                                                      "lbl_international"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterBold17),
                                                                  Text(
                                                                      "msg_schools_in_egypt"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterBold17)
                                                                ]))
                                                      ]))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 21),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_application".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtInterBold25)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 17, bottom: 1),
                                              child: Text("lbl_form".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular25))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 7),
                                        child: Text("lbl_child_info".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular15))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.nameController,
                                    hintText: "lbl_child_name".tr,
                                    margin:
                                        getMargin(left: 32, top: 8, right: 20),
                                    variant: TextFormFieldVariant.FillWhiteA700,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterRegular15,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    }),
                                Padding(
                                    padding:
                                        getPadding(left: 32, top: 6, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(125),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                125),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    91),
                                                            margin: getMargin(
                                                                left: 14,
                                                                top: 6,
                                                                right: 19,
                                                                bottom: 9),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "lbl_country"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              4))
                                                                ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(206),
                                              margin: getMargin(left: 6),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                206),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                      "lbl_nationality"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          left:
                                                                              75,
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              4))
                                                                ])))
                                                  ]))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 32, top: 6, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCalendarGray400,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(26),
                                              margin:
                                                  getMargin(top: 4, bottom: 7)),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(77),
                                              margin: getMargin(left: 5),
                                              child: Stack(
                                                  alignment: Alignment.topRight,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA70035x125,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                77),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 6,
                                                                right: 8),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                      "lbl_day"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          left:
                                                                              15,
                                                                          top:
                                                                              8,
                                                                          bottom:
                                                                              6))
                                                                ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(103),
                                              margin: getMargin(left: 6),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                103),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 6),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                      "lbl_month"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          left:
                                                                              15,
                                                                          top:
                                                                              8,
                                                                          bottom:
                                                                              6))
                                                                ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(112),
                                              margin: getMargin(left: 6),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                112),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 6),
                                                            child:
                                                                Row(children: [
                                                              Text(
                                                                  "lbl_year".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular15),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgChevron,
                                                                  height:
                                                                      getVerticalSize(
                                                                          4),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          8),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              34,
                                                                          top:
                                                                              8,
                                                                          bottom:
                                                                              6))
                                                            ])))
                                                  ]))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 32, top: 6, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(188),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                188),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    151),
                                                            margin: getMargin(
                                                                left: 15,
                                                                top: 6,
                                                                right: 21,
                                                                bottom: 9),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "lbl_main_language"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              4))
                                                                ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(142),
                                              margin: getMargin(left: 6),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                142),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 5),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                      "lbl_sex"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          left:
                                                                              67,
                                                                          top:
                                                                              11,
                                                                          bottom:
                                                                              3))
                                                                ])))
                                                  ]))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 15),
                                        child: Text("lbl_parents_info".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular15))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.nameoneController,
                                    hintText: "lbl_father_s_name".tr,
                                    margin:
                                        getMargin(left: 32, top: 7, right: 20),
                                    variant: TextFormFieldVariant.FillWhiteA700,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterRegular15,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    }),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.group5135Controller,
                                    hintText: "lbl_father_s_job".tr,
                                    margin:
                                        getMargin(left: 32, top: 6, right: 20),
                                    variant: TextFormFieldVariant.FillWhiteA700,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterRegular15),
                                Padding(
                                    padding:
                                        getPadding(left: 32, top: 6, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(68),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA70035x125,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                68),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 11,
                                                                top: 6),
                                                            child:
                                                                Row(children: [
                                                              Text("lbl_202".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular15),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgChevron,
                                                                  height:
                                                                      getVerticalSize(
                                                                          4),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          8),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              4))
                                                            ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(262),
                                              margin: getMargin(left: 6),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                262),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                      "lbl_mobile_no"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          left:
                                                                              138,
                                                                          top:
                                                                              12,
                                                                          bottom:
                                                                              2))
                                                                ])))
                                                  ]))
                                        ])),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.nametwoController,
                                    hintText: "lbl_mother_s_name".tr,
                                    margin:
                                        getMargin(left: 32, top: 12, right: 20),
                                    variant: TextFormFieldVariant.FillWhiteA700,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterRegular15,
                                    validator: (value) {
                                      if (!isText(value)) {
                                        return "Please enter valid text";
                                      }
                                      return null;
                                    }),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.group5133Controller,
                                    hintText: "lbl_mother_s_job".tr,
                                    margin:
                                        getMargin(left: 32, top: 6, right: 20),
                                    variant: TextFormFieldVariant.FillWhiteA700,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterRegular15),
                                Padding(
                                    padding:
                                        getPadding(left: 32, top: 6, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(68),
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA70035x125,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                68),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 11,
                                                                top: 6),
                                                            child:
                                                                Row(children: [
                                                              Text("lbl_202".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterRegular15),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgChevron,
                                                                  height:
                                                                      getVerticalSize(
                                                                          4),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          8),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              4,
                                                                          top:
                                                                              10,
                                                                          bottom:
                                                                              4))
                                                            ])))
                                                  ])),
                                          Container(
                                              height: getVerticalSize(35),
                                              width: getHorizontalSize(262),
                                              margin: getMargin(left: 6),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgBgWhiteA700,
                                                        height:
                                                            getVerticalSize(35),
                                                        width:
                                                            getHorizontalSize(
                                                                262),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                      "lbl_mobile_no"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular15),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgChevron,
                                                                      height:
                                                                          getVerticalSize(
                                                                              4),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              8),
                                                                      margin: getMargin(
                                                                          left:
                                                                              138,
                                                                          top:
                                                                              12,
                                                                          bottom:
                                                                              2))
                                                                ])))
                                                  ]))
                                        ])),
                                Container(
                                    height: getVerticalSize(39),
                                    width: getHorizontalSize(338),
                                    margin: getMargin(top: 6),
                                    child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 14,
                                                      top: 4,
                                                      right: 14,
                                                      bottom: 4),
                                                  decoration: AppDecoration
                                                      .fillWhiteA700
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder11),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 7),
                                                            child: Text(
                                                                "lbl_address"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular15))
                                                      ]))),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCut,
                                              height: getVerticalSize(24),
                                              width: getHorizontalSize(54),
                                              alignment: Alignment.bottomRight,
                                              margin: getMargin(right: 21))
                                        ])),
                                Container(
                                    height: getVerticalSize(35),
                                    width: getHorizontalSize(338),
                                    margin: getMargin(top: 2),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                getHorizontalSize(13)),
                                            topRight: Radius.circular(
                                                getHorizontalSize(12)),
                                            bottomLeft: Radius.circular(
                                                getHorizontalSize(12)),
                                            bottomRight: Radius.circular(
                                                getHorizontalSize(13))))),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    autofocus: true,
                                    controller: controller.emailController,
                                    hintText: "lbl_e_mail2".tr,
                                    margin:
                                        getMargin(left: 32, top: 6, right: 20),
                                    variant: TextFormFieldVariant.FillWhiteA700,
                                    padding: TextFormFieldPadding.PaddingAll8,
                                    fontStyle:
                                        TextFormFieldFontStyle.InterRegular15,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    }),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 22),
                                        child: Text("msg_i_would_like_to".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular15))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 11),
                                        child: Row(children: [
                                          Container(
                                              height: getVerticalSize(23),
                                              width: getHorizontalSize(28),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVideocameraWhiteA700,
                                                        height:
                                                            getVerticalSize(23),
                                                        width:
                                                            getHorizontalSize(
                                                                28),
                                                        alignment:
                                                            Alignment.center),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmarkBlueGray400,
                                                        height:
                                                            getVerticalSize(9),
                                                        width:
                                                            getHorizontalSize(
                                                                14),
                                                        alignment:
                                                            Alignment.topCenter,
                                                        margin:
                                                            getMargin(top: 5))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 2, bottom: 3),
                                              child: Text(
                                                  "msg_full_time_8_am".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular15))
                                        ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 5),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVideocameraWhiteA700,
                                              height: getVerticalSize(23),
                                              width: getHorizontalSize(28)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 2, bottom: 3),
                                              child: Text("lbl_part_time".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular15))
                                        ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 6),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgVideocameraWhiteA700,
                                              height: getVerticalSize(23),
                                              width: getHorizontalSize(28)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 9, top: 2, bottom: 3),
                                              child: Text(
                                                  "lbl_evening_shift".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterRegular15))
                                        ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 32, top: 18),
                                        child: Text("lbl_other_info".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular15))),
                                Container(
                                    height: getVerticalSize(143),
                                    width: getHorizontalSize(338),
                                    margin: getMargin(top: 7),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                getHorizontalSize(13)),
                                            topRight: Radius.circular(
                                                getHorizontalSize(12)),
                                            bottomLeft: Radius.circular(
                                                getHorizontalSize(12)),
                                            bottomRight: Radius.circular(
                                                getHorizontalSize(13))))),
                                Container(
                                    height: getVerticalSize(39),
                                    width: getHorizontalSize(133),
                                    margin: getMargin(top: 37),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgRectangle1028,
                                              height: getVerticalSize(39),
                                              width: getHorizontalSize(133),
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: getPadding(top: 5),
                                                  child: Text("lbl_apply".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold16)))
                                        ]))
                              ])))
                        ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
