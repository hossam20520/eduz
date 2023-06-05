import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_subtitle_3.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends GetWidget<CartController> {
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
                      onTapArrowleft4();
                    }),
                actions: [
                  AppbarSubtitle3(
                      text: "lbl_cart".tr,
                      margin:
                          getMargin(left: 142, top: 19, right: 170, bottom: 18))
                ]),
            body: Container(
                height: getVerticalSize(763),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 31, top: 27, right: 32),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller
                                  .cartModelObj.value.cartItemList.value.length,
                              itemBuilder: (context, index) {
                                CartItemModel model = controller.cartModelObj
                                    .value.cartItemList.value[index];
                                return CartItemWidget(model);
                              })))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(left: 31, right: 31),
                          decoration: AppDecoration.outlineBlack90019,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_price_per_unit2"
                                                  .tr
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                  color: ColorConstant
                                                      .blueGray40002,
                                                  fontSize: getFontSize(11),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: " ",
                                              style: TextStyle(
                                                  color: ColorConstant.black900,
                                                  fontSize: getFontSize(11),
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left)),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_799".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanBold25)),
                                CustomButton(
                                    height: getVerticalSize(57),
                                    text: "msg_proceed_to_checkout".tr,
                                    margin: getMargin(top: 23),
                                    shape: ButtonShape.RoundedBorder16,
                                    padding: ButtonPadding.PaddingAll15,
                                    fontStyle:
                                        ButtonFontStyle.RobotoRomanBold20,
                                    onTap: () {
                                      onTapProceedto();
                                    })
                              ])))
                ]))));
  }

  onTapProceedto() {
    // Get.toNamed(
    //   AppRoutes.checkoutScreen,
    // );
  }

  onTapArrowleft4() {
    Get.back();
  }
}
