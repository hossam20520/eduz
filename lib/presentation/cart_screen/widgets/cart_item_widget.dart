import '../controller/cart_controller.dart';
import '../models/cart_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:eduz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatelessWidget {
  CartItemWidget(this.cartItemModelObj);

  CartItemModel cartItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.outlineBluegray50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: getMargin(
                bottom: 16,
              ),
              color: ColorConstant.blueGray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Container(
                height: getVerticalSize(
                  103,
                ),
                width: getHorizontalSize(
                  114,
                ),
                padding: getPadding(
                  top: 9,
                  bottom: 9,
                ),
                decoration: AppDecoration.fillBluegray50.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIphone14promodel1,
                      height: getVerticalSize(
                        84,
                      ),
                      width: getHorizontalSize(
                        114,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 1,
                right: 11,
                bottom: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      188,
                    ),
                    child: Obx(
                      () => Text(
                        cartItemModelObj.priceTxt.value,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanBold12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Row(
                      children: [
                        Obx(
                          () => Text(
                            cartItemModelObj.priceoneTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanBold14Cyan900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_per_unit".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRomanRegular1017,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 26,
                          width: 26,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIconminus,
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            26,
                          ),
                          width: getHorizontalSize(
                            66,
                          ),
                          text: "lbl_1".tr,
                          margin: getMargin(
                            left: 7,
                          ),
                          variant: ButtonVariant.FillBluegray50,
                          fontStyle: ButtonFontStyle.RobotoRomanBold1576,
                        ),
                        CustomIconButton(
                          height: 26,
                          width: 26,
                          margin: getMargin(
                            left: 7,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgIconplus,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
