import '../controller/home_container1_controller.dart';
import '../models/home_container_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeContainerItemWidget extends StatelessWidget {
  HomeContainerItemWidget(this.homeContainerItemModelObj);

  HomeContainerItemModel homeContainerItemModelObj;

  var controller = Get.find<HomeContainer1Controller>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
        onTap: () => controller.GoToView(homeContainerItemModelObj
            .route?.value), // Call the switchLanguage method on tap
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.yellow700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder72,
              ),
              child: Container(
                height: getSize(
                  144,
                ),
                width: getSize(
                  144,
                ),
                padding: getPadding(
                  left: 6,
                  right: 6,
                ),
                decoration: AppDecoration.fillYellow700.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder72,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: homeContainerItemModelObj.image.value,
                      height: getSize(
                        130,
                      ),
                      width: getSize(
                        130,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          65,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 14,
              ),
              child: Obx(
                () => Text(
                  homeContainerItemModelObj.kindergartensTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBlack,
                ),
              ),
            ),
          ],
        )));
  }
}
