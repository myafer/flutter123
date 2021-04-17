import 'package:flutter/material.dart';

Color colorTheme = color1(0x0041c4);
Color color666 = color1(0x666666);
Color color333 = color1(0x333333);
Color color222 = color1(0x222222);
Color colorWhite = Colors.white;
Color colorBlack = Colors.black;

Color color1(int value) {
  int colorInt = 0xFF000000 + value;
  return Color(colorInt);
}
