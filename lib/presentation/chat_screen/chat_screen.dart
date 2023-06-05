import '../chat_screen/widgets/chat_item_widget.dart';
import '../chat_screen/widgets/chat_item_reply_widget.dart';
import 'controller/chat_controller.dart';
import 'models/chat_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/app_bar/appbar_image.dart';
import 'package:eduz/widgets/app_bar/custom_app_bar.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
              background: ColorConstant.yellow700,
              height: getVerticalSize(98),
              leadingWidth: 30,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleftWhiteA700,
                  margin: getMargin(left: 37, top: 25, right: 329),
                  onTap: () {
                    onTapArrowleft1();
                  }),
              centerTitle: true,
              title: Padding(
                  padding: getPadding(top: 4, bottom: 19),
                  child: Text("lbl_maha_ahmed".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTajawalRegular14Black)),
            ),
            body: Container(
                height: getVerticalSize(729),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 40, top: 9, right: 40),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(18));
                              },
                              itemCount: controller
                                  .chatModelObj.value.chatItemList.value.length,
                              itemBuilder: (context, index) {
                                ChatItemModel model = controller.chatModelObj
                                    .value.chatItemList.value[index];
                                if (controller.chatModelObj.value.chatItemList
                                        .value[index].reply ==
                                    "yes") {
                                  return ChatItemReplWidget(model);
                                } else {
                                  return ChatItemWidget(model);
                                }
                              })))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: getPadding(
                              left: 40, top: 30, right: 40, bottom: 30),
                          decoration: AppDecoration.ContainChat,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: getMargin(right: 20),
                                    padding: getPadding(all: 1),
                                    decoration:
                                        AppDecoration.outlineBluegray100021,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 27, top: 10, bottom: 8),
                                              child: Text(
                                                  "lbl_say_something".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratRomanMedium16)),
                                          CustomButton(
                                              height: getVerticalSize(50),
                                              width: getHorizontalSize(80),
                                              text: "lbl_sed".tr,
                                              variant:
                                                  ButtonVariant.FillYellow700,
                                              shape: ButtonShape.Square,
                                              padding: ButtonPadding.PaddingT14,
                                              fontStyle: ButtonFontStyle
                                                  .MontserratRomanMedium16)
                                        ]))
                              ])))
                ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
