import '../products_screen/widgets/products_item_widget.dart';
import 'controller/products_controller.dart';
import 'models/products_item_model.dart';
import 'package:eduz/core/app_export.dart';

import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends GetWidget<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: Container(
          width: double.maxFinite,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_eduz".tr,
                      style: TextStyle(
                          color: ColorConstant.gray80001,
                          fontSize: getFontSize(23),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: "lbl_supplies".tr,
                      style: TextStyle(
                          color: ColorConstant.gray80001,
                          fontSize: getFontSize(16),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700))
                ]),
                textAlign: TextAlign.left),
            CustomImageView(
                imagePath: ImageConstant.imgImage10,
                height: getVerticalSize(117),
                width: getHorizontalSize(390),
                margin: getMargin(top: 18)),
            Divider(
                height: getVerticalSize(3),
                thickness: getVerticalSize(3),
                color: ColorConstant.purpleA400),
            Container(
                width: double.maxFinite,
                padding: getPadding(left: 47, top: 6, right: 47, bottom: 6),
                decoration: AppDecoration.fillGray10003,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 1, bottom: 2),
                          child: Text("lbl_supplies".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14)),
                      Padding(
                          padding: getPadding(bottom: 3),
                          child: Text("lbl_review".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Black900)),
                      Padding(
                          padding: getPadding(top: 1, right: 9, bottom: 2),
                          child: Text("lbl_policy".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Black900))
                    ])),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: getPadding(left: 46, top: 10),
                    child: Text("msg_all_products_categories".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold14Black900))),
            CustomImageView(
                svgPath: ImageConstant.imgClippathgroupBlack900,
                height: getVerticalSize(41),
                width: getHorizontalSize(352),
                alignment: Alignment.centerRight,
                margin: getMargin(top: 8)),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: getPadding(left: 55, right: 35),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(top: 5),
                              child: Text("lbl_bags2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold14Black900)),
                          Padding(
                              padding: getPadding(top: 6, bottom: 14),
                              child: SizedBox(
                                  width: getHorizontalSize(176),
                                  child: Divider(
                                      height: getVerticalSize(1),
                                      thickness: getVerticalSize(1),
                                      color: ColorConstant.gray60063,
                                      indent: getHorizontalSize(33)))),
                          Padding(
                              padding: getPadding(left: 30, bottom: 5),
                              child: Text("lbl_filters".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular14PinkA200))
                        ]))),
            Expanded(
                child: Padding(
                    padding: getPadding(left: 53, top: 20, right: 50),
                    child: Obx(() => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(189),
                            crossAxisCount: 2,
                            mainAxisSpacing: getHorizontalSize(12),
                            crossAxisSpacing: getHorizontalSize(12)),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.productsModelObj.value
                            .productsItemList.value.length,
                        itemBuilder: (context, index) {
                          ProductsItemModel model = controller.productsModelObj
                              .value.productsItemList.value[index];
                          return ProductsItemWidget(model);
                        }))))
          ])),
    ));
  }

  ///Handling route based on bottom click actions
}

///Handling page based on route
