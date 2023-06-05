import 'controller/single_product1_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class SingleProduct1Screen extends GetWidget<SingleProduct1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(64),
                leadingWidth: 46,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlueGray90002,
                    margin: getMargin(left: 22, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft5();
                    }),
                centerTitle: true,
                title: AppbarSubtitle3(text: "lbl_shalimar_100_ml".tr)),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 21, top: 2, right: 27),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSharePurpleA400,
                                    height: getVerticalSize(37),
                                    width: getHorizontalSize(42)),
                                CustomIconButton(
                                    height: 27,
                                    width: 27,
                                    margin: getMargin(bottom: 9),
                                    variant:
                                        IconButtonVariant.OutlineBlack90019,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgIconheart))
                              ])),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle4174,
                          height: getSize(297),
                          width: getSize(297),
                          radius: BorderRadius.circular(getHorizontalSize(25)),
                          alignment: Alignment.centerLeft,
                          margin: getMargin(left: 21, top: 5)),
                      Container(
                          width: getHorizontalSize(327),
                          margin: getMargin(left: 28, top: 8, right: 34),
                          padding: getPadding(top: 1, bottom: 1),
                          decoration: AppDecoration.outlineBluegray50,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(296),
                                    margin: getMargin(right: 30),
                                    child: Text("msg_apple_iphone_14".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtRobotoRomanRegular18)),
                                Padding(
                                    padding: getPadding(
                                        top: 9, right: 79, bottom: 8),
                                    child: Row(children: [
                                      CustomButton(
                                          height: getVerticalSize(29),
                                          width: getHorizontalSize(128),
                                          text: "lbl_market_name".tr,
                                          variant:
                                              ButtonVariant.OutlineBluegray50,
                                          padding: ButtonPadding.PaddingT6,
                                          fontStyle: ButtonFontStyle
                                              .RobotoRomanRegular14Bluegray40002,
                                          prefixWidget: Container(
                                              margin: getMargin(right: 10),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconShoppingbag))),
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgIconstarfull,
                                          height: getSize(15),
                                          width: getSize(15),
                                          margin: getMargin(
                                              left: 12, top: 6, bottom: 6)),
                                      Padding(
                                          padding: getPadding(
                                              left: 4, top: 5, bottom: 3),
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "lbl_5_0".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .lime800,
                                                        fontSize: getFontSize(
                                                            16.214054107666016),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                TextSpan(
                                                    text: "lbl_399_reviews".tr,
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900,
                                                        fontSize: getFontSize(
                                                            10.028983116149902),
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ]),
                                              textAlign: TextAlign.left))
                                    ]))
                              ])),
                      Expanded(
                          child: Container(
                              width: getHorizontalSize(327),
                              margin: getMargin(left: 28, top: 20, right: 34),
                              padding: getPadding(top: 1, bottom: 1),
                              decoration: AppDecoration.outlineBluegray50,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_description".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanBold18),
                                    Container(
                                        width: getHorizontalSize(309),
                                        margin: getMargin(top: 11, bottom: 15),
                                        child: ReadMoreText(
                                            "msg_lorem_ipsum_dolor2".tr,
                                            trimLines: 2,
                                            colorClickableText:
                                                ColorConstant.black900,
                                            trimMode: TrimMode.Line,
                                            trimCollapsedText:
                                                "lbl_read_more".tr,
                                            moreStyle: TextStyle(
                                                color:
                                                    ColorConstant.blueGray40002,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400),
                                            lessStyle: TextStyle(
                                                color:
                                                    ColorConstant.blueGray40002,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)))
                                  ]))),
                      Expanded(
                          child: Container(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 50),
                                  padding: getPadding(left: 31, right: 31),
                                  decoration: AppDecoration.outlineBlack90019,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 23),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_price_per_unit2"
                                                                          .tr
                                                                          .toUpperCase(),
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .blueGray40002,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: " ",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              11),
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          fontWeight:
                                                                              FontWeight.w400))
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "lbl_799".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanBold25))
                                                      ]),
                                                  Spacer(),
                                                  CustomIconButton(
                                                      height: 30,
                                                      width: 30,
                                                      margin: getMargin(
                                                          top: 7, bottom: 7),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconminus)),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(30),
                                                      width:
                                                          getHorizontalSize(75),
                                                      text: "lbl_1".tr,
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 7,
                                                          bottom: 7),
                                                      variant: ButtonVariant
                                                          .FillBluegray50,
                                                      fontStyle: ButtonFontStyle
                                                          .RobotoRomanBold18),
                                                  CustomIconButton(
                                                      height: 30,
                                                      width: 30,
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 7,
                                                          bottom: 7),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgIconplus))
                                                ])),
                                        Expanded(
                                            child: CustomButton(
                                                height: getVerticalSize(57),
                                                text: "lbl_add_to_cart".tr,
                                                margin: getMargin(top: 23),
                                                shape:
                                                    ButtonShape.RoundedBorder16,
                                                padding:
                                                    ButtonPadding.PaddingAll15,
                                                fontStyle: ButtonFontStyle
                                                    .RobotoRomanBold20))
                                      ]))))
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
