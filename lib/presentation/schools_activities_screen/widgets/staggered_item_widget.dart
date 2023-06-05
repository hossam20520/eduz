import '../controller/schools_activities_controller.dart';
import '../models/staggered_item_model.dart';
import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StaggeredItemWidget extends StatelessWidget {
  StaggeredItemWidget(this.staggeredItemModelObj);

  StaggeredItemModel staggeredItemModelObj;

  var controller = Get.find<SchoolsActivitiesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage26,
        height: getVerticalSize(
          181,
        ),
        width: getHorizontalSize(
          187,
        ),
      ),
    );
  }
}
