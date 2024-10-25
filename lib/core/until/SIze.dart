import 'package:flutter/material.dart';

double gheight(double scale,BuildContext context){
  return MediaQuery.of(context).size.height* scale;
}

double gwidth(double scale,BuildContext context){
  return MediaQuery.of(context).size.width* scale;
}
