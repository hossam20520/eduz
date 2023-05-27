import 'package:eduz/presentation/favorite_screen/models/favorite_model.dart';
import '../favorite_screen/widgets/favorite_item_widget.dart';
import '../favorite_screen/widgets/calander_item_widget.dart';
import 'controller/favorite_controller.dart';
import 'models/calander_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'controller/favorite_controller.dart';
import 'models/favorite_item_model.dart';
import 'package:eduz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  FavoriteController controller = Get.put(FavoriteController(FavoriteModel().obs));

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
                    Container(
                        width: double.maxFinite,
                        child: Container(
                            padding: getPadding(
                                left: 16, top: 18, right: 16, bottom: 18),
                            decoration: AppDecoration.fillGray200,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant
                                          .imgArrowleftBlueGray90003,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(left: 9),
                                      onTap: () {
                                        onTapImgArrowleft();
                                      }),
                                  Padding(
                                      padding: getPadding(top: 8, bottom: 34),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 20, bottom: 29),
                                                child: Text("lbl_favorite".tr,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtTajawalRegular32PurpleA400)),
                                            CustomImageView(
                                                imagePath:
                                                ImageConstant.imgImage7,
                                                height: getVerticalSize(89),
                                                width: getHorizontalSize(136))
                                          ]))
                                ]))),
                    Expanded(
                        child: Padding(
                            padding: getPadding(left: 16, top: 36, right: 16),
                            child: Obx(() => ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(8));
                                },
                                itemCount: controller.favoriteModelObj.value
                                    .favoriteItemList.value.length,
                                itemBuilder: (context, index) {
                                  FavoriteItemModel model = controller.favoriteModelObj
                                      .value
                                      .favoriteItemList
                                      .value[index];
                                  return FavoriteItemWidget(model);
                                }))))
                  ])),
        ));
  }

  ///Handling route based on bottom click actions

  ///Handling page based on route


  onTapImgArrowleft() {
    Get.back();
  }
}
