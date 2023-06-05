import '../checkout_screen/widgets/checkout_item_widget.dart';
import 'controller/checkout_controller.dart';
import 'models/checkout_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/core/utils/validation_functions.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CheckoutScreen extends GetWidget<CheckoutController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      onTapArrowleft3();
                    }),
                centerTitle: true,
                title: Text("lbl_checkout".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRomanBold16)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(31),
                              width: getHorizontalSize(327),
                              margin: getMargin(top: 7),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding:
                                                getPadding(top: 1, bottom: 1),
                                            decoration:
                                                AppDecoration.outlineBluegray50,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 9),
                                                      child: Text(
                                                          "lbl_my_order".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold16))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Text("lbl_350_00".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoRomanBold16))
                                  ])),
                          Container(
                              margin: getMargin(left: 28, top: 15, right: 34),
                              padding: getPadding(top: 1, bottom: 1),
                              decoration: AppDecoration.outlineBluegray50,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(14));
                                        },
                                        itemCount: controller
                                            .checkoutModelObj
                                            .value
                                            .checkoutItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          CheckoutItemModel model = controller
                                              .checkoutModelObj
                                              .value
                                              .checkoutItemList
                                              .value[index];
                                          return CheckoutItemWidget(model);
                                        })),
                                    Padding(
                                        padding:
                                            getPadding(top: 14, bottom: 12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_delivery".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanRegular14)),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("lbl_15_00".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold14Pink600))
                                            ]))
                                  ])),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Text("msg_check_out_detail".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtMontserratLight20Black900)),
                          Padding(
                              padding: getPadding(left: 22, top: 26, right: 28),
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
                                        decoration: AppDecoration
                                            .outlineIndigo300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
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
                                                  padding: getPadding(left: 14),
                                                  child: Text(
                                                      "lbl_first_name".tr,
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
                                        decoration: AppDecoration
                                            .outlineIndigo300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
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
                                                  padding: getPadding(left: 14),
                                                  child: Text(
                                                      "lbl_last_name".tr,
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
                              controller: controller.emailController,
                              hintText: "lbl_email".tr,
                              margin: getMargin(left: 22, top: 16, right: 28),
                              textInputType: TextInputType.emailAddress,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 29, top: 17, right: 14, bottom: 17),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgMail)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(54)),
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
                              margin: getMargin(left: 22, top: 16, right: 28),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 29, top: 17, right: 14, bottom: 17),
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
                          Container(
                              width: double.maxFinite,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapColumnpriceperu();
                                  },
                                  child: Container(
                                      margin: getMargin(top: 197),
                                      padding: getPadding(left: 31, right: 31),
                                      decoration:
                                          AppDecoration.outlineBlack90019,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 23),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "lbl_price_per_unit2"
                                                                  .tr
                                                                  .toUpperCase(),
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray40002,
                                                              fontSize:
                                                                  getFontSize(
                                                                      11),
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: " ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .black900,
                                                              fontSize:
                                                                  getFontSize(
                                                                      11),
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ]),
                                                    textAlign: TextAlign.left)),
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("lbl_799".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanBold25)),
                                            CustomButton(
                                                height: getVerticalSize(57),
                                                text: "lbl_confirm_order".tr,
                                                margin: getMargin(top: 23),
                                                shape:
                                                    ButtonShape.RoundedBorder16,
                                                padding:
                                                    ButtonPadding.PaddingAll15,
                                                fontStyle: ButtonFontStyle
                                                    .RobotoRomanBold20)
                                          ]))))
                        ])))));
  }

  onTapColumnpriceperu() {
    // Get.toNamed(
    //   AppRoutes.successOrderScreen,
    // );
  }

  onTapArrowleft3() {
    Get.back();
  }
}
