import 'controller/splashscreen_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                padding: getPadding(top: 334),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: getVerticalSize(143),
                      width: getHorizontalSize(180),
                      alignment: Alignment.topCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: getVerticalSize(143),
                      width: getHorizontalSize(180),
                      alignment: Alignment.topCenter)
                ]))));
  }
}
