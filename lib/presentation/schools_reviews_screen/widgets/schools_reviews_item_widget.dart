import '../controller/schools_reviews_controller.dart';
import '../models/schools_reviews_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class SchoolsReviewsItemWidget extends StatelessWidget {
  SchoolsReviewsItemWidget(this.schoolsReviewsItemModelObj);

  SchoolsReviewsItemModel schoolsReviewsItemModelObj;

  var controller = Get.find<SchoolsReviewsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillGray50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: getVerticalSize(
                201,
              ),
              width: getHorizontalSize(
                169,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: getPadding(
                        left: 13,
                        top: 14,
                        right: 13,
                        bottom: 14,
                      ),
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 32,
                            ),
                            child: Text(
                              "lbl_maha_nasir".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold15,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              142,
                            ),
                            child: Text(
                              "msg".tr,
                              maxLines: null,
                              textAlign: TextAlign.right,
                              style: AppStyle.txtMontserratSemiBold11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgProfileimage76x76,
                    height: getSize(
                      76,
                    ),
                    width: getSize(
                      76,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        38,
                      ),
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 7,
                bottom: 4,
              ),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: false,
                itemSize: getVerticalSize(
                  20,
                ),
                itemCount: 5,
                updateOnDrag: true,
                onRatingUpdate: (rating) {},
                itemBuilder: (
                  context,
                  _,
                ) {
                  return Icon(
                    Icons.star,
                    color: ColorConstant.purpleA400,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
