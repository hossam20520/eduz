import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color orangeA200 = fromHex('#ffb343');
  static Color indigo900 = fromHex('#262261');
  static Color orangeA100 = fromHex('#fed36d');
  static Color purpleA200 = fromHex('#e04af3');
  static Color whiteA700A3 = fromHex('#a3ffffff');
  static Color gray10002 = fromHex('#f7f7f8');
  static Color blueGray700 = fromHex('#535662');
  static Color black90019 = fromHex('#19000000');
  static Color blue800 = fromHex('#1a48d3');
  static Color greenA100 = fromHex('#b5eacd');
  static Color blueGray50 = fromHex('#ebedf0');
  static Color red200 = fromHex('#fa9a9a');
  static Color blueGray70001 = fromHex('#535763');
  static Color gray40002 = fromHex('#c4c4c4');
  static Color gray5003 = fromHex('#fcfcfc');
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

  static Color PrimryFontColor = fromHex('#26304B');

  static Color gray5001 = fromHex('#f9f9f9');

  static Color gray5002 = fromHex('#f8f8f8');

  static Color gray5004 = fromHex('#fcfcfc');

  static Color gray80002 = fromHex('#505050');

  static Color gray6002d = fromHex('#2d6f6f6f');

  static Color greenA10001 = fromHex('#bfeebb');

  static Color blueGray90001 = fromHex('#2c2c2c');

  static Color blueGray900 = fromHex('#313131');

  static Color gray600 = fromHex('#6c6c6c');

  static Color gray60067 = fromHex('#67707070');

  static Color blueGray100 = fromHex('#d4d4d4');

  static Color blueGray300 = fromHex('#8b98b4');

  static Color gray800 = fromHex('#4b4b4d');

  static Color gray60063 = fromHex('#63707070');

  static Color gray10006 = fromHex('#f6f6f6');

  static Color gray10005 = fromHex('#f5f5f5');

  static Color gray10004 = fromHex('#f7f7f7');

  static Color gray40003 = fromHex('#c4c4c4');

  static Color blueGray40003 = fromHex('#888888');

  static Color blueGray40002 = fromHex('#7a8699');

  static Color blueGray40001 = fromHex('#78849e');

  static Color blueGray70002 = fromHex('#535662');

  static Color blueGray70003 = fromHex('#535763');

  static Color blueGray10001 = fromHex('#cecece');

  static Color lightGreen100 = fromHex('#dbf3d9');

  static Color gray50Fc = fromHex('#fcfafafa');

  static Color pinkA200 = fromHex('#fc24a8');

  static Color drawerColor = fromHex('#7c7c7c1f');

  static Color gray50001 = fromHex('#999999');

  static Color gray60060 = fromHex('#60707070');

  static Color pink600 = fromHex('#e0284b');

  static Color gray40070 = fromHex('#70b2abb2');

  static Color lime800 = fromHex('#a98518');

  static Color gray90001 = fromHex('#202020');

  static Color gray300 = fromHex('#dadada');

  static Color blueGray30001 = fromHex('#9098b1');

  static Color blueGray30002 = fromHex('#98a1b0');

  static Color orange100 = fromHex('#fcdeb1');

  static Color cyan900 = fromHex('#1d6575');

  static Color gray6003f = fromHex('#3f6c6c6c');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
