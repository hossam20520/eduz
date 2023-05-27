import 'controller/single_supplie_policy_tab_controller.dart';
import 'models/single_supplie_policy_tab_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SingleSuppliePolicyTabPage extends StatelessWidget {
  SingleSuppliePolicyTabController controller = Get.put(
      SingleSuppliePolicyTabController(SingleSuppliePolicyTabModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 497,
                  ),
                  padding: getPadding(
                    left: 48,
                    top: 8,
                    right: 48,
                    bottom: 8,
                  ),
                  decoration: AppDecoration.outlineBlack9003f,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgShare,
                        height: getVerticalSize(
                          37,
                        ),
                        width: getHorizontalSize(
                          44,
                        ),
                        margin: getMargin(
                          top: 11,
                          bottom: 6,
                        ),
                      ),
                      CustomButton(
                        height: getVerticalSize(
                          54,
                        ),
                        width: getHorizontalSize(
                          122,
                        ),
                        text: "lbl_book_now".tr,
                        margin: getMargin(
                          left: 43,
                        ),
                        shape: ButtonShape.RoundedBorder7,
                        padding: ButtonPadding.PaddingT14,
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFavorite,
                        height: getSize(
                          30,
                        ),
                        width: getSize(
                          30,
                        ),
                        margin: getMargin(
                          left: 50,
                          top: 11,
                          bottom: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
