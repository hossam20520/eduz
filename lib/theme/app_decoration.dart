import 'package:flutter/material.dart';
import 'package:eduz/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: ColorConstant.blueGray50,
      );

  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.blueGray50,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );

  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineBluegray1003f => BoxDecoration();
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstant.gray5003,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillGray50fc => BoxDecoration(
        color: ColorConstant.gray50Fc,
      );
  static BoxDecoration get outlineBluegray100021 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueGray10002,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillGray5003 => BoxDecoration(
        color: ColorConstant.gray5003,
      );

  static BoxDecoration get ContainChat => BoxDecoration(
        color: ColorConstant.gray20001,
      );

  static BoxDecoration get txtFillPurpleA400 => BoxDecoration(
        color: ColorConstant.purpleA400,
      );

  static BoxDecoration get outlineBluegray10002 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.blueGray10002,
          width: getHorizontalSize(
            1,
          ),
        ),
      );

  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray20001 => BoxDecoration(
        color: ColorConstant.gray20001,
      );
  static BoxDecoration get fillPurpleA400 => BoxDecoration(
        color: ColorConstant.purpleA400,
      );
  static BoxDecoration get fillGray10003 => BoxDecoration(
        color: ColorConstant.gray10003,
      );

  static BoxDecoration get fillPurple100 => BoxDecoration(
        color: ColorConstant.purple100,
      );

  static BoxDecoration get outlineIndigo300 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.indigo300,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.yellow700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.black900,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineYellow7001 => BoxDecoration(
        color: ColorConstant.yellow700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.yellow700,
            width: getHorizontalSize(
              2,
            ),
          ),
        ),
      );
  static BoxDecoration get fillYellow700 => BoxDecoration(
        color: ColorConstant.yellow700,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get outlineYellow700 => BoxDecoration(
        color: ColorConstant.yellow700,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.yellow700,
            width: getHorizontalSize(
              2,
            ),
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );

  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );

  static BoxDecoration get fillIndigoA200 => BoxDecoration(
        color: ColorConstant.indigoA200,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );
  static BorderRadius customBorderTL84 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        84,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        84,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        33,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        33,
      ),
    ),
  );
  static BorderRadius txtRoundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );
  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius circleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
  static BorderRadius roundedBorder48 = BorderRadius.circular(
    getHorizontalSize(
      48,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11,
    ),
  );

  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius customBorderTL38 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        38,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        38,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        12,
      ),
    ),
  );
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius circleBorder65 = BorderRadius.circular(
    getHorizontalSize(
      65,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius circleBorder72 = BorderRadius.circular(
    getHorizontalSize(
      72,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
