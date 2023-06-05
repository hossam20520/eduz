import '../drawer_draweritem/controller/drawer_controller.dart';
import '../drawer_draweritem/drawer_draweritem.dart';
import '../home_container1_page/widgets/home_container_item_widget.dart';
import 'controller/home_container1_controller.dart';
import 'models/home_container1_model.dart';
import 'models/home_container_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_search_view.dart';

import 'package:flutter/material.dart' hide DrawerController;
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeContainer1Page extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeContainer1Controller controller =
      Get.put(HomeContainer1Controller(HomeContainer1Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.whiteA700,
            drawer: DrawerDraweritem(DrawerController()),
            appBar: CustomAppBar(
                background: Colors.transparent,
                height: getVerticalSize(100),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(22),
                    width: getHorizontalSize(37),
                    svgPath: ImageConstant.imgMenuYellow7001,
                    margin: getMargin(left: 5, bottom: 37),
                    onTap: () {
                      onTapMenu();
                    }),
                title: Padding(
                    padding: getPadding(left: 230),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(right: 8),
                                  child: RichText(
                                      text: TextSpan(children: []),
                                      textAlign: TextAlign.left))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("blb_hello2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold14Balc)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_amira".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold14))
                        ])),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(51),
                      width: getHorizontalSize(50),
                      imagePath: ImageConstant.imgIstockphoto114,
                      margin: getMargin(left: 11, top: 8, right: 16))
                ]),
            body: Stack(children: [
              Container(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding:
                                    getPadding(left: 51, top: 7, right: 13),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      CustomSearchView(
                                          width: getHorizontalSize(224),
                                          focusNode: FocusNode(),
                                          autofocus: false,
                                          controller:
                                              controller.searchController,
                                          hintText: "lbl_search".tr,
                                          variant: SearchViewVariant
                                              .OutlineGray10002,
                                          shape: SearchViewShape.RoundedBorder8,
                                          fontStyle: SearchViewFontStyle
                                              .PoppinsRegular12,
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 16,
                                                  top: 10,
                                                  right: 8,
                                                  bottom: 11),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSearchGray80003)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(37)),
                                          suffix: Padding(
                                              padding: EdgeInsets.only(
                                                  right: getHorizontalSize(15)),
                                              child: IconButton(
                                                  onPressed: () {
                                                    controller.searchController
                                                        .clear();
                                                  },
                                                  icon: Icon(Icons.clear,
                                                      color: Colors
                                                          .grey.shade600)))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGoogle,
                                          height: getVerticalSize(31),
                                          width: getHorizontalSize(33),
                                          margin: getMargin(
                                              left: 16, top: 3, bottom: 2)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCamera,
                                          height: getVerticalSize(31),
                                          width: getHorizontalSize(33),
                                          margin: getMargin(
                                              left: 20, top: 1, bottom: 4))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage11,
                            height: getVerticalSize(135),
                            width: getHorizontalSize(390),
                            margin: getMargin(top: 20)),
                        Padding(
                            padding: getPadding(left: 16, top: 14, right: 16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_categories".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratSemiBold20Yellow700),
                                  Spacer(),
                                  Padding(
                                      padding: getPadding(top: 2, bottom: 3),
                                      child: Text("lbl_see_all".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtMontserratRegular16)),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowrightYellow700,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(left: 4, bottom: 1))
                                ])),
                        Expanded(
                            child: Padding(
                                padding:
                                    getPadding(left: 41, top: 40, right: 38),
                                child: Obx(() => GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisExtent:
                                                getVerticalSize(177),
                                            crossAxisCount: 2,
                                            mainAxisSpacing:
                                                getHorizontalSize(22),
                                            crossAxisSpacing:
                                                getHorizontalSize(22)),
                                    physics: BouncingScrollPhysics(),
                                    itemCount: controller
                                        .homeContainer1ModelObj
                                        .value
                                        .homeContainerItemList
                                        .value
                                        .length,
                                    itemBuilder: (context, index) {
                                      HomeContainerItemModel model = controller
                                          .homeContainer1ModelObj
                                          .value
                                          .homeContainerItemList
                                          .value[index];
                                      return HomeContainerItemWidget(model);
                                    })))),
                      ])),
            ])));
  }

  onTapMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }

  GoToChat() {
    Get.toNamed(AppRoutes.chatScreen);
  }
}
