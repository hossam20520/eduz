import '../universities_screen/widgets/universities_item_widget.dart';
import 'controller/universities_controller.dart';
import 'models/universities_item_model.dart';
import 'package:eduz/core/app_export.dart';

import 'package:eduz/widgets/app_bar/appbar_iconbutton.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/appbar_searchview.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UniversitiesScreen extends GetWidget<UniversitiesController> {
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
              top: 16,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: AppbarSearchview(
            hintText: "lbl_search".tr,
            controller: controller.searchController,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgFilter,
              margin: getMargin(
                top: 9,
                bottom: 11,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage14,
                height: getVerticalSize(
                  135,
                ),
                width: getHorizontalSize(
                  390,
                ),
                margin: getMargin(
                  top: 8,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  left: 19,
                  top: 23,
                ),
                child: IntrinsicWidth(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        onTap: () => GoToKidenter(),
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
                        onTap: () => GoToTeacher(),
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
                        margin: getMargin(
                          left: 10,
                        ),
                      ),
                      CustomImageView(
                        onTap: () => GoToTeacher(),
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
                        onTap: () => GoToSpecialNeed(),
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
                  top: 26,
                ),
                child: Text(
                  "lbl_universities2".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular22,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 29,
                      right: 16,
                    ),
                    child: Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: getVerticalSize(
                            214,
                          ),
                          crossAxisCount: 2,
                          mainAxisSpacing: getHorizontalSize(
                            20,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            20,
                          ),
                        ),
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.universitiesModelObj.value
                            .universitiesItemList.value.length,
                        itemBuilder: (context, index) {
                          UniversitiesItemModel model = controller
                              .universitiesModelObj
                              .value
                              .universitiesItemList
                              .value[index];
                          return UniversitiesItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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

  GoToSpecialNeed() {
    Get.toNamed(
      AppRoutes.specialNeedsCentersScreen,
    );
  }

  GoToSchool() {
    Get.toNamed(
      AppRoutes.schoolScreen,
    );
  }

  GoToTeacher() {
    Get.toNamed(
      AppRoutes.teachersScreen,
    );
  }

  GoTUniversity() {
    Get.toNamed(
      AppRoutes.universitiesScreen,
    );
  }

  GotoSchool() {
    Get.toNamed(
      AppRoutes.schoolScreen,
    );
  }

  GoToKidenter() {
    Get.toNamed(
      AppRoutes.kindergartenScreen,
    );
  }
}
