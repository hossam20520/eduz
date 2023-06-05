import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';

import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(this.chatItemModelObj);

  ChatItemModel chatItemModelObj;

  var controller = Get.find<ChatController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: ColorConstant.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder11,
        ),
        child: Container(
          height: getVerticalSize(
            110,
          ),
          width: getHorizontalSize(
            310,
          ),
          padding: getPadding(
            all: 2,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: getVerticalSize(
                    86,
                  ),
                  width: getHorizontalSize(
                    290,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: getPadding(
                            left: 12,
                            top: 6,
                            right: 12,
                            bottom: 6,
                          ),
                          decoration: AppDecoration.fillYellow700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder11,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: getVerticalSize(
                                  72,
                                ),
                                width: getHorizontalSize(
                                  249,
                                ),
                                margin: getMargin(
                                  top: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.yellow700,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: getHorizontalSize(
                            229,
                          ),
                          margin: getMargin(
                            right: 21,
                          ),
                          child: Text(
                            "msg_test_lorrem_hello".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratRomanMedium14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle4226,
                height: getVerticalSize(
                  40,
                ),
                width: getHorizontalSize(
                  43,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
