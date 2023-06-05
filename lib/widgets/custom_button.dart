import 'package:eduz/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case ButtonPadding.PaddingT14:
        return getPadding(
          left: 5,
          top: 14,
          right: 5,
          bottom: 14,
        );
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case ButtonPadding.PaddingT16:
        return getPadding(
          top: 16,
          right: 16,
          bottom: 16,
        );
      case ButtonPadding.PaddingT6:
        return getPadding(
          top: 6,
          right: 6,
          bottom: 6,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case ButtonPadding.PaddingT12:
        return getPadding(
          left: 8,
          top: 12,
          bottom: 12,
        );
      default:
        return getPadding(
          all: 3,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBluegray50:
        return ColorConstant.blueGray50;
      case ButtonVariant.OutlineIndigo300:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillRed200:
        return ColorConstant.red200;
      case ButtonVariant.FillGreenA100:
        return ColorConstant.greenA100;
      case ButtonVariant.OutlineBluegray50:
        return ColorConstant.gray10003;
      case ButtonVariant.FillYellow700:
        return ColorConstant.yellow700;
      case ButtonVariant.FillBlue800:
        return ColorConstant.blue800;
      case ButtonVariant.OutlineIndigo300_1:
        return null;
      default:
        return ColorConstant.purpleA400;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineIndigo300:
        return BorderSide(
          color: ColorConstant.indigo300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray50:
        return BorderSide(
          color: ColorConstant.blueGray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigo300_1:
        return BorderSide(
          color: ColorConstant.indigo300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBluegray50:
      case ButtonVariant.FillPurpleA400:
      case ButtonVariant.FillRed200:
      case ButtonVariant.FillGreenA100:
      case ButtonVariant.FillYellow700:
      case ButtonVariant.FillBlue800:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
      case ButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            11.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRomanBold1576:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15.76,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratRegular20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.MontserratRegular18:
        return TextStyle(
          color: ColorConstant.indigo300,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterSemiBold10:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.RobotoRomanBold20:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRomanRegular14:
        return TextStyle(
          color: ColorConstant.blueGray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanBold18:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.MontserratRomanMedium16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.MontserratLight18:
        return TextStyle(
          color: ColorConstant.indigo300,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        );

      case ButtonFontStyle.RobotoRomanRegular14Bluegray40002:
        return TextStyle(
          color: ColorConstant.blueGray40002,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonShape {
  RoundedBorder16,
  Square,
  RoundedBorder11,
  RoundedBorder7,
  RoundedBorder4,
  RoundedBorder15,
  CircleBorder20,
}

enum ButtonPadding {
  PaddingAll3,
  PaddingAll18,
  PaddingT14,
  PaddingAll15,
  PaddingT16,
  PaddingT6,
  PaddingAll9,
  PaddingT12,
}

enum ButtonVariant {
  FillBluegray50,
  FillPurpleA400,
  OutlineIndigo300,
  FillRed200,
  FillGreenA100,
  OutlineBluegray50,
  FillYellow700,
  FillBlue800,
  OutlineIndigo300_1,
}

enum ButtonFontStyle {
  InterBold16,
  RobotoRomanRegular14Bluegray40002,
  RobotoRomanBold1576,
  MontserratSemiBold20,
  MontserratRegular20,
  MontserratRegular18,
  InterSemiBold10,
  RobotoRomanBold20,
  RobotoRomanRegular14,
  RobotoRomanBold18,
  MontserratRomanMedium16,
  RobotoMedium14,
  MontserratLight18,
}
