import 'controller/onbording_one_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingOneScreen extends GetWidget<OnbordingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.yellow700,
            body: SingleChildScrollView(

                // scrollDirection: Axis.vertical,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 36, right: 16, bottom: 36),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgOnboarding1,
                              height: getVerticalSize(250),
                              width: getHorizontalSize(273),
                              margin: getMargin(top: 26)),
                          Padding(
                              padding: getPadding(top: 75),
                              child: Text("msg_find_the_perfect".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold24)),
                          Container(
                              width: getHorizontalSize(277),
                              margin: getMargin(left: 39, top: 24, right: 40),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtMontserratLight18)),
                          Container(
                              height: getVerticalSize(10),
                              margin: getMargin(top: 62, right: 62),
                              child: SmoothIndicator(
                                  offset: 0,
                                  count: 3,
                                  size: Size.zero,
                                  effect: ScrollingDotsEffect(
                                      spacing: 12,
                                      activeDotColor: ColorConstant.purpleA400,
                                      dotColor: ColorConstant.whiteA700,
                                      dotHeight: getVerticalSize(10),
                                      dotWidth: getHorizontalSize(10)))),
                          CustomButton(
                              height: getVerticalSize(62),
                              text: "lbl_next".tr,
                              margin: getMargin(top: 65),
                              onTap: () {
                                onTapNext();
                              }),
                          Padding(
                              padding: getPadding(top: 49),
                              child: Text("lbl_skip".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratLight16Black900))
                        ])))));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.onbordingTwoScreen,
    );
  }
}
