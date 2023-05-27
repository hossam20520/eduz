import '../home_screen/widgets/home_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:eduz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            70,
          ),
          leadingWidth: 53,
          leading: AppbarImage(
            height: getVerticalSize(
              34,
            ),
            width: getHorizontalSize(
              37,
            ),
            svgPath: ImageConstant.imgMenuPurpleA400,
            margin: getMargin(
              left: 16,
              top: 11,
              bottom: 11,
            ),
          ),
          title: CustomSearchView(
            width: getHorizontalSize(
              227,
            ),
            focusNode: FocusNode(),
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            margin: getMargin(
              left: 5,
            ),
            prefix: Container(
              margin: getMargin(
                left: 12,
                top: 5,
                right: 14,
                bottom: 8,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgSearch,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: getVerticalSize(
                38,
              ),
            ),
            suffix: Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(
                  15,
                ),
              ),
              child: IconButton(
                onPressed: () {
                  controller.searchController.clear();
                },
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                36,
              ),
              width: getHorizontalSize(
                83,
              ),
              svgPath: ImageConstant.imgVideocamera,
              margin: getMargin(
                left: 5,
                top: 10,
                right: 16,
                bottom: 10,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskgroup,
                height: getVerticalSize(
                  126,
                ),
                width: getHorizontalSize(
                  358,
                ),
                margin: getMargin(
                  top: 3,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 39,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_categories2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold20,
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 3,
                      ),
                      child: Text(
                        "lbl_see_all".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratRegular16,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowright,
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      margin: getMargin(
                        left: 4,
                        bottom: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: getPadding(
                    left: 25,
                    top: 26,
                    right: 22,
                  ),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(
                          177,
                        ),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          22,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          22,
                        ),
                      ),
                      physics: BouncingScrollPhysics(),
                      itemCount: controller
                          .homeModelObj.value.homeItemList.value.length,
                      itemBuilder: (context, index) {
                        HomeItemModel model = controller
                            .homeModelObj.value.homeItemList.value[index];
                        return HomeItemWidget(
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
