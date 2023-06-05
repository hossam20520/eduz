import 'package:eduz/presentation/calander_screen/models/calander_model.dart';

import '../calander_screen/widgets/listmon_item_widget.dart';
import '../calander_screen/widgets/listone_item_widget.dart';
import '../calander_screen/widgets/listrectangle42_item_widget.dart';
import 'controller/calander_controller.dart';
import 'models/listmon_item_model.dart';
import 'models/listone_item_model.dart';
import 'models/listrectangle42_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/presentation/home_container1_page/home_container1_page.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:eduz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CalanderScreen extends GetWidget<CalanderController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  CalanderController controller =
      Get.put(CalanderController(CalanderModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
              padding: getPadding(top: 18),
              child: Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleftBlueGray90003,
                            height: getSize(24),
                            width: getSize(24),
                            margin: getMargin(left: 9),
                            onTap: () {
                              onTapImgArrowleft();
                            }),
                        Container(
                            width: double.maxFinite,
                            child: Container(
                                margin: getMargin(top: 18),
                                padding: getPadding(all: 16),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftGray70001,
                                                height: getSize(24),
                                                width: getSize(24),
                                                onTap: () {
                                                  onTapImgArrowleftone();
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 3),
                                                child: Text("lbl_march_2023".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium14
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.1)))),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightGray70001,
                                                height: getSize(24),
                                                width: getSize(24))
                                          ]),
                                      Padding(
                                          padding: getPadding(
                                              left: 11, top: 7, right: 12),
                                          child: Obx(() => ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(19));
                                              },
                                              itemCount: controller
                                                  .calanderModelObj
                                                  .value
                                                  .listmonItemList
                                                  .value
                                                  .length,
                                              itemBuilder: (context, index) {
                                                ListmonItemModel model =
                                                    controller
                                                        .calanderModelObj
                                                        .value
                                                        .listmonItemList
                                                        .value[index];
                                                return ListmonItemWidget(model);
                                              }))),
                                      Padding(
                                          padding: getPadding(
                                              left: 14,
                                              top: 23,
                                              right: 14,
                                              bottom: 11),
                                          child: Obx(() => ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(11));
                                              },
                                              itemCount: controller
                                                  .calanderModelObj
                                                  .value
                                                  .listoneItemList
                                                  .value
                                                  .length,
                                              itemBuilder: (context, index) {
                                                ListoneItemModel model =
                                                    controller
                                                        .calanderModelObj
                                                        .value
                                                        .listoneItemList
                                                        .value[index];
                                                return ListoneItemWidget(model);
                                              })))
                                    ]))),
                        CustomIconButton(
                            height: 38,
                            width: 38,
                            margin: getMargin(top: 7),
                            alignment: Alignment.center,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgPlus)),
                        Padding(
                            padding: getPadding(left: 8, top: 26, right: 8),
                            child: Obx(() => ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(5));
                                },
                                itemCount: controller.calanderModelObj.value
                                    .listrectangle42ItemList.value.length,
                                itemBuilder: (context, index) {
                                  Listrectangle42ItemModel model = controller
                                      .calanderModelObj
                                      .value
                                      .listrectangle42ItemList
                                      .value[index];
                                  return Listrectangle42ItemWidget(model);
                                })))
                      ])))),
    ));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeContainer1Page;
      case BottomBarEnum.Calander:
        return AppRoutes.calanderScreen;
      default:
        return "/";
    }
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgArrowleftone() {
    Get.back();
  }
}
