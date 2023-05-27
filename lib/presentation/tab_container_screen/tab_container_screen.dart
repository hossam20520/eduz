import 'controller/tab_container_controller.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/single_supplie_policy_tab_page/single_supplie_policy_tab_page.dart';
// import 'package:eduz/presentation/single_supplie_review_tab_page/single_supplie_review_tab_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TabTabContainerScreen extends GetWidget<TabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgMenu,
                height: getVerticalSize(
                  34,
                ),
                width: getHorizontalSize(
                  37,
                ),
                alignment: Alignment.centerLeft,
                margin: getMargin(
                  left: 11,
                  top: 23,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 12,
                  top: 23,
                  right: 20,
                ),
                decoration: AppDecoration.outlineBluegray10002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle4179,
                      height: getSize(
                        103,
                      ),
                      width: getSize(
                        103,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 13,
                        top: 25,
                        bottom: 7,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              195,
                            ),
                            child: Text(
                              "msg_ameerican_international".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtMontserratSemiBold14Bluegray90002,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 15,
                            ),
                            child: Text(
                              "lbl_ameerican_inter".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold14Gray500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getVerticalSize(
                        8,
                      ),
                      width: getHorizontalSize(
                        7,
                      ),
                      margin: getMargin(
                        left: 10,
                        top: 85,
                        bottom: 10,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                        top: 82,
                        right: 8,
                        bottom: 6,
                      ),
                      child: Text(
                        "lbl_4_8".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratSemiBold11,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  63,
                ),
                width: double.maxFinite,
                margin: getMargin(
                  top: 14,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.yellow700,
                ),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelColor: ColorConstant.whiteA700,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: ColorConstant.gray80001,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    color: ColorConstant.purpleA400,
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_supplies".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_review".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_policy".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  567,
                ),
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    SingleSuppliePolicyTabPage(),
                    SingleSuppliePolicyTabPage(),
                    SingleSuppliePolicyTabPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
