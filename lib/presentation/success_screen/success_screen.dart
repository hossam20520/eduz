import 'controller/success_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.yellow700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 44,
            top: 211,
            right: 44,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: getSize(
                  102,
                ),
                width: getSize(
                  102,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 65,
                ),
                child: Text(
                  "lbl_gongratulations".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold24,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 15,
                  bottom: 5,
                ),
                child: Text(
                  "msg_you_have_signed".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratLight18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
