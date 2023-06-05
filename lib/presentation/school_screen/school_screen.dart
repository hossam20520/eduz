import '../school_screen/widgets/school1_item_widget.dart';
import '../school_screen/widgets/school_item_widget.dart';
import 'controller/school_controller.dart';
import 'models/school1_item_model.dart';
import 'models/school_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_searchview.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SchoolScreen extends GetWidget<SchoolController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      appBar: CustomAppBar(
          background: Colors.transparent,
          height: getVerticalSize(96),
          leadingWidth: 38,
          leading: AppbarImage(
              height: getVerticalSize(23),
              width: getHorizontalSize(31),
              svgPath: ImageConstant.imgMenuPurpleA400,
              margin: getMargin(left: 7, top: 16, bottom: 17)),
          centerTitle: true,
          title: AppbarSearchview(
              autofocus: false,
              hintText: "lbl_search".tr,
              controller: controller.searchController),
          actions: [
            AppbarIconbutton(
                svgPath: ImageConstant.imgFilter,
                margin: getMargin(top: 9, bottom: 11))
          ]),
      body: SizedBox(
          width: size.width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgImage14,
                    height: getVerticalSize(135),
                    width: getHorizontalSize(390)),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(left: 19, top: 23),
                    child: IntrinsicWidth(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30))),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4194,
                              height: getSize(60),
                              width: getSize(60),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(30)),
                              margin: getMargin(left: 10))
                        ]))),
                Padding(
                    padding: getPadding(left: 32, top: 27),
                    child: Text("lbl_schools2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular22)),
                Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 55, top: 24, right: 56),
                            child: Obx(() => GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: getVerticalSize(155),
                                        crossAxisCount: 2,
                                        mainAxisSpacing: getHorizontalSize(21),
                                        crossAxisSpacing:
                                            getHorizontalSize(12)),
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.schoolModelObj.value
                                    .school1ItemList.value.length,
                                itemBuilder: (context, index) {
                                  School1ItemModel model = controller
                                      .schoolModelObj
                                      .value
                                      .school1ItemList
                                      .value[index];
                                  return School1ItemWidget(model);
                                })))))
              ])),
    ));
  }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Frame10419orange100:
  //       return AppRoutes.homePage;
  //     default:
  //       return "/";
  //   }
  // }
  // bottomNavigationBar:
  // CustomBottomBar(onChanged: (BottomBarEnum type) {
  // Get.toNamed(getCurrentRoute(type), id: 1);
  // })
  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homePage:
  //       return HomePage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}
