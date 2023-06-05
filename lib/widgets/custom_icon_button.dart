import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case IconButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case IconButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case IconButtonPadding.PaddingAll1:
        return getPadding(
          all: 1,
        );
      default:
        return getPadding(
          all: 4,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillPurpleA400:
        return ColorConstant.purpleA400;
      case IconButtonVariant.OutlineBlack90019:
        return ColorConstant.purpleA400;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillGray10005:
        return ColorConstant.gray10005;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.FillPurpleA400:
      case IconButtonVariant.OutlineBlack90019:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillGray10005:
        return null;
      default:
        return Border.all(
          color: ColorConstant.gray40001,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );

      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack90019:
        return [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              3.45,
            ),
          ),
        ];
      case IconButtonVariant.OutlineGray40001:
      case IconButtonVariant.FillPurpleA400:
      case IconButtonVariant.FillWhiteA700:
      case IconButtonVariant.FillGray10005:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonPadding {
  PaddingAll11,
  PaddingAll9,
  PaddingAll4,
  PaddingAll18,
  PaddingAll1,
}

enum IconButtonVariant {
  FillYellow700,
  OutlineGray40001,
  FillPurpleA400,
  OutlineBlack90019,
  FillWhiteA700,
  FillGray10005,
  OutlineGray40002,
  FillGray10006,
}

enum IconButtonShape {
  RoundedBorder13,
  RoundedBorder16,
  RoundedBorder4,
  CircleBorder28,
}
