import '../teachers_screen/widgets/teachers_item_widget.dart';
import 'controller/teachers_controller.dart';
import 'models/teachers_item_model.dart';
import 'package:eduz/core/app_export.dart';

import 'package:eduz/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_searchview.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:eduz/presentation/CategoryContainer/AppBar.dart';

// ignore_for_file: must_be_immutable
class TeachersScreen extends GetWidget<TeachersController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          background: Colors.transparent,
          height: getVerticalSize(
            96,
          ),
          leadingWidth: 38,
          leading: AppbarImage(
            height: getVerticalSize(
              23,
            ),
            width: getHorizontalSize(
              31,
            ),
            svgPath: ImageConstant.imgMenuPurpleA400,
            margin: getMargin(
              left: 7,
              top: 15,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: AppbarSearchview(
            autofocus: false,
            hintText: "lbl_search".tr,
            controller: controller.searchController,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                left: 15,
                top: 9,
                right: 15,
                bottom: 10,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage16,
                height: getVerticalSize(
                  136,
                ),
                width: getHorizontalSize(
                  390,
                ),
                margin: getMargin(
                  top: 7,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  left: 19,
                  top: 22,
                ),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle4163130x130,
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30,
                          ),
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle41632,
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30,
                          ),
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      Container(
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle41631,
                              height: getSize(
                                60,
                              ),
                              width: getSize(
                                60,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  30,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getSize(
                                  60,
                                ),
                                width: getSize(
                                  60,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.whiteA700A3,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle4163,
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30,
                          ),
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.specialNeed,
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30,
                          ),
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.educenter,
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30,
                          ),
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.eduService,
                        height: getSize(
                          60,
                        ),
                        width: getSize(
                          60,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30,
                          ),
                        ),
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 32,
                  top: 23,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_teachers2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular22,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMenuWhiteA700,
                      height: getVerticalSize(
                        38,
                      ),
                      width: getHorizontalSize(
                        47,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 18,
                    top: 22,
                    right: 19,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          233,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          20,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          15,
                        ),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .teachersModelObj.value.teachersItemList.value.length,
                      itemBuilder: (context, index) {
                        TeachersItemModel model = controller.teachersModelObj
                            .value.teachersItemList.value[index];
                        return TeachersItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: CustomBottomBar(
        //   onChanged: (BottomBarEnum type) {
        //     Get.toNamed(getCurrentRoute(type), id: 1);
        //   },
        // ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Frame10419orange100:
  //       return AppRoutes.schoolContainer1Page;
  //     default:
  //       return "/";
  //   }
  // }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.schoolContainer1Page:
  //       return SchoolContainer1Page();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  GotoSchool() {
    Get.toNamed(
      AppRoutes.schoolScreen,
    );
  }
}
