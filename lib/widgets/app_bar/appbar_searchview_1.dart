import 'package:eduz/core/app_export.dart';
import 'package:eduz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarSearchview1 extends StatelessWidget {
  AppbarSearchview1({
    this.hintText,
    this.controller,
    this.margin,
  });

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: getHorizontalSize(
          227,
        ),
        focusNode: FocusNode(),
        autofocus: true,
        controller: controller,
        hintText: hintText,
        variant: SearchViewVariant.FillGray10005,
        shape: SearchViewShape.RoundedBorder5,
        fontStyle: SearchViewFontStyle.TajawalRegular16,
        prefix: Container(
          margin: getMargin(
            left: 12,
            top: 5,
            right: 14,
            bottom: 8,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgSearchGray40001,
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
              controller!.clear();
            },
            icon: Icon(
              Icons.clear,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ),
    );
  }
}
