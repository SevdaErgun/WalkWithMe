import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color projectBackground = fromHex('#D6E9EA');

  static Color logoColor = fromHex('#1E1E1E');

  static Color gray700 = fromHex('#616763');

  static Color orange300D8 = fromHex('#d8f4b04a');

  static Color gray500 = fromHex('#9a9898');

  static Color blueGray400 = fromHex('#888888');

  static Color blue30001 = fromHex('#70b3da');

  static Color red400 = fromHex('#eb584e');

  static Color gray200 = fromHex('#e7e7e7');

  static Color black9003f = fromHex('#3f000000');

  static Color orange300 = fromHex('#f4b04a');

  static Color orange30001 = fromHex('#f5b14b');

  static Color deepOrangeA40001 = fromHex('#fb2b0f');

  static Color blue30060 = fromHex('#6070b4da');

  static Color black900 = fromHex('#000000');

  static Color blue300 = fromHex('#70b4da');

  static Color blueGray700 = fromHex('#4b4173');

  static Color deepOrangeA400D8 = fromHex('#d8fb2b0e');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrangeA400 = fromHex('#fb2b0e');

  static Color gray70001 = fromHex('#626763');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
