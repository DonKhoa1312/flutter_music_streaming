import 'package:flutter/material.dart';
import 'package:flutter_music_streaming/core/until/Colorhex.dart';

//Appcolor

Color primarycolor = Colorhex("E55137");
Color darkcolor =Colorhex("181C14");

enum fontfamily { centurygothic_bold, Mulish }

//font size
class Appfontsize {
  final double smallText = 14.0;
  final double normalText = 16.0;
  final double largeText = 20.0;
  final double appBarText = 22.0;
}



final normalTheme =ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colorhex("1E1E1E")



);