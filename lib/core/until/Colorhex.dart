import 'package:flutter/material.dart';

class Colorhex extends Color {
  Colorhex(final String hexcode) : super(_hexcolor(hexcode));
  static int _hexcolor(String hexcode) {
    hexcode = hexcode.toUpperCase();
    if (hexcode.length == 6) {
      hexcode = hexcode.replaceAll("#", "");
      hexcode = "FF" + hexcode;
    }
    return int.parse(hexcode, radix: 16);
  }
}
