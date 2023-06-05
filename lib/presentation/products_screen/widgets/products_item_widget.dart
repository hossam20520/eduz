import '../controller/products_controller.dart';
import '../models/products_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(this.productsItemModelObj);

  ProductsItemModel productsItemModelObj;

  var controller = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        188,
      ),
      width: getHorizontalSize(
        137,
      ),
      padding: getPadding(
        left: 8,
        top: 5,
        right: 8,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1703,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 3,
                top: 5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img176280761max,
                    height: getSize(
                      110,
                    ),
                    width: getSize(
                      110,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_shalimar".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_100_ml".tr,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                8,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "lbl_8_15".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold13,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 29,
            width: 29,
            variant: IconButtonVariant.FillGray10005,
            alignment: Alignment.bottomRight,
            child: CustomImageView(
              svgPath: ImageConstant.imgCartPink200,
            ),
          ),
        ],
      ),
    );
  }
}
