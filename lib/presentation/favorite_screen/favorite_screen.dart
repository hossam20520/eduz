import 'package:eduz/presentation/favorite_screen/models/favorite_model.dart';
import 'package:eduz/presentation/favorite_screen/widgets/teacher_item_widget.dart';
import 'package:eduz/widgets/custom_button.dart';
import '../cart_screen/controller/cart_controller.dart';
import '../cart_screen/models/cart_item_model.dart';
import '../cart_screen/models/cart_model.dart';
import '../cart_screen/widgets/cart_item_widget.dart';
import '../cart_screen/widgets/facv_item_widget.dart';
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

  FavoriteController controller =
      Get.put(FavoriteController(FavoriteModel().obs));

  CartController controllerCart = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: ColorConstant.yellow700,
                bottom: const TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.person)),
                    Tab(icon: Icon(Icons.shopping_cart)),
                    Tab(icon: Icon(Icons.school)),
                  ],
                ),
              ),
              backgroundColor: ColorConstant.whiteA700,
              body: TabBarView(
                children: [
                  Scaffold(
                      backgroundColor: ColorConstant.gray100,
                      body: SizedBox(
                          width: size.width,
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                Container(
                                    width: double.maxFinite,
                                    child: Container(
                                        padding: getPadding(
                                            left: 16,
                                            top: 13,
                                            right: 16,
                                            bottom: 13),
                                        decoration: AppDecoration.fillGray200,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 28, top: 16),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 24,
                                                                        bottom:
                                                                            24),
                                                                child: Text(
                                                                    "lbl_teachers"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular40)),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage789x136,
                                                                height:
                                                                    getVerticalSize(
                                                                        97),
                                                                width:
                                                                    getHorizontalSize(
                                                                        136))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height:
                                                          getVerticalSize(36),
                                                      width: getHorizontalSize(
                                                          217),
                                                      margin: getMargin(top: 8),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                4,
                                                                            bottom:
                                                                                2),
                                                                        padding: getPadding(
                                                                            left:
                                                                                14,
                                                                            top:
                                                                                4,
                                                                            right:
                                                                                14,
                                                                            bottom:
                                                                                4),
                                                                        decoration: AppDecoration
                                                                            .fillGray50fc
                                                                            .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
                                                                        child: Row(children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgSearchBlack900,
                                                                              height: getSize(12),
                                                                              width: getSize(12),
                                                                              margin: getMargin(top: 5, bottom: 5)),
                                                                          Padding(
                                                                              padding: getPadding(left: 11),
                                                                              child: SizedBox(height: getVerticalSize(23), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray60067))),
                                                                          Padding(
                                                                              padding: getPadding(left: 9, top: 2, bottom: 4),
                                                                              child: Text("lbl_search3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular13))
                                                                        ]))),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup2734,
                                                                height:
                                                                    getSize(36),
                                                                width:
                                                                    getSize(36),
                                                                alignment: Alignment
                                                                    .centerRight)
                                                          ])))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 50, top: 18, right: 62),
                                    child: Obx(() => ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return Padding(
                                              padding: getPadding(
                                                  top: 17.0, bottom: 17.0),
                                              child: SizedBox(
                                                  width: getHorizontalSize(263),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .gray60060)));
                                        },
                                        itemCount: controller
                                            .favoriteModelObj
                                            .value
                                            .favoriteItemList
                                            .value
                                            .length,
                                        itemBuilder: (context, index) {
                                          FavoriteItemModel model = controller
                                              .favoriteModelObj
                                              .value
                                              .favoriteItemList
                                              .value[index];
                                          return TecherFavoriteItemWidget(
                                              model);
                                        }))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(top: 15),
                                        child: SizedBox(
                                            width: getHorizontalSize(263),
                                            child: Divider(
                                                height: getVerticalSize(2),
                                                thickness: getVerticalSize(2),
                                                color:
                                                    ColorConstant.gray60060))))
                              ])))),
                  Container(
                      height: getVerticalSize(763),
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding:
                                    getPadding(left: 31, top: 27, right: 32),
                                child: Obx(() => ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: controllerCart.cartModelObj.value
                                        .cartItemList.value.length,
                                    itemBuilder: (context, index) {
                                      CartItemModel model = controllerCart
                                          .cartModelObj
                                          .value
                                          .cartItemList
                                          .value[index];
                                      return FavcItemWidget(model);
                                    })))),
                      ])),
                  SizedBox(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            Container(
                                width: double.maxFinite,
                                child: Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 13,
                                        right: 16,
                                        bottom: 13),
                                    decoration: AppDecoration.fillGray200,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 28, top: 16),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 24,
                                                                bottom: 24),
                                                            child: Text(
                                                                "lbl_favorite"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular40)),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImage789x136,
                                                            height:
                                                                getVerticalSize(
                                                                    97),
                                                            width:
                                                                getHorizontalSize(
                                                                    136))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: getVerticalSize(36),
                                                  width: getHorizontalSize(217),
                                                  margin: getMargin(top: 8),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        top: 2,
                                                                        right:
                                                                            4,
                                                                        bottom:
                                                                            2),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 4,
                                                                        right:
                                                                            14,
                                                                        bottom:
                                                                            4),
                                                                decoration: AppDecoration
                                                                    .fillGray50fc
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .circleBorder16),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgSearchBlack900,
                                                                          height: getSize(
                                                                              12),
                                                                          width: getSize(
                                                                              12),
                                                                          margin: getMargin(
                                                                              top: 5,
                                                                              bottom: 5)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  11),
                                                                          child: SizedBox(
                                                                              height: getVerticalSize(23),
                                                                              child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray60067))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              top:
                                                                                  2,
                                                                              bottom:
                                                                                  4),
                                                                          child: Text(
                                                                              "lbl_search3".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterRegular13))
                                                                    ]))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgGroup2734,
                                                            height: getSize(36),
                                                            width: getSize(36),
                                                            alignment: Alignment
                                                                .centerRight)
                                                      ])))
                                        ]))),
                            Padding(
                                padding:
                                    getPadding(left: 50, top: 18, right: 62),
                                child: Obx(() => ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 17.0, bottom: 17.0),
                                          child: SizedBox(
                                              width: getHorizontalSize(263),
                                              child: Divider(
                                                  height: getVerticalSize(2),
                                                  thickness: getVerticalSize(2),
                                                  color: ColorConstant
                                                      .gray60060)));
                                    },
                                    itemCount: controller.favoriteModelObj.value
                                        .favoriteItemList.value.length,
                                    itemBuilder: (context, index) {
                                      FavoriteItemModel model = controller
                                          .favoriteModelObj
                                          .value
                                          .favoriteItemList
                                          .value[index];
                                      return FavoriteItemWidget(model);
                                    }))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: getPadding(top: 15),
                                    child: SizedBox(
                                        width: getHorizontalSize(263),
                                        child: Divider(
                                            height: getVerticalSize(2),
                                            thickness: getVerticalSize(2),
                                            color: ColorConstant.gray60060))))
                          ]))),
                ],
              ),
            )));
  }

  ///Handling route based on bottom click actions

  ///Handling page based on route

  onTapImgArrowleft() {
    Get.back();
  }
}
