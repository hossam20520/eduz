import '../controller/checkout_controller.dart';
import '../models/checkout_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  CheckoutItemWidget(this.checkoutItemModelObj);

  CheckoutItemModel checkoutItemModelObj;

  var controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Obx(
            () => Text(
              checkoutItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRomanRegular14,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 42,
            bottom: 1,
          ),
          child: Text(
            "lbl_1".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoRomanBold14,
          ),
        ),
        CustomImageView(
          svgPath: ImageConstant.imgIconx,
          height: getSize(
            19,
          ),
          width: getSize(
            19,
          ),
          margin: getMargin(
            left: 3,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 2,
            bottom: 1,
          ),
          child: Obx(
            () => Text(
              checkoutItemModelObj.priceoneTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRomanBold14,
            ),
          ),
        ),
      ],
    );
  }
}
