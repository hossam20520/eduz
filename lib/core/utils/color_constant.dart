import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray10002 = fromHex('#cecece');
  static Color gray80001 = fromHex('#505050');
  static Color gray500 = fromHex('#949494');
  static Color blueGray90002 = fromHex('#2c2c2c');
  static Color gray50 = fromHex('#f9f9f9');
  static Color gray20001 = fromHex('#ededed');
  static Color purple100 = fromHex('#f9c0ff');
  static Color gray200 = fromHex('#f0f0f0');
  static Color redA700 = fromHex('#ff0000');
  static Color gray90002 = fromHex('#161c26');
  static Color gray10001 = fromHex('#f3f3f3');
  static Color gray900 = fromHex('#262626');
  static Color gray400 = fromHex('#bbbbbb');
  static Color gray70001 = fromHex('#6a6a6a');
  static Color blueGray400 = fromHex('#888888');
  static Color gray10003 = fromHex('#f6f6f6');
  static Color amber700 = fromHex('#f29f05');

  static Color indigoA200 = fromHex('#536df2');

  static Color black9003f = fromHex('#3f000000');

  static Color gray100 = fromHex('#f7f7f7');

  static Color indigo300 = fromHex('#8185c6');

  static Color black90001 = fromHex('#01021c');

  static Color gray40001 = fromHex('#c6c6c6');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#febf2c');

  static Color whiteA70001 = fromHex('#fffefd');

  static Color purpleA400 = fromHex('#db12ef');

  static Color indigo700 = fromHex('#353ba3');

  static Color whiteA700 = fromHex('#ffffff');

  static Color PrimryFontColor =  fromHex('#26304B');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
