import 'package:flutter/material.dart';

abstract class ColorPalette {
  static const Color black = Color(0xFF000000);
  static const Color darkPurple = Color(0xFF1b0b1a);
  static const Color wine = Color(0xFF3c0e3b);
  static const Color purple = Color(0xFF781d76);
  static const Color darkBlue = Color(0xFF000045);
  static const Color blue = Color(0xFF0702a1);
  static const Color violet = Color(0xFF6842ec);
  static const Color lavender = Color(0xFFe5e6ff);
  static const Color ivory = Color(0xFFFFFFF0);
  static const Color grey = Color(0xFFbccdf9);
  static const Color golden = Color(0xFFaf9637);
  static const Color darkGrey = Color(0xFF202020);
  static const Color lightGrey = Color(0xFF4d4d4d);

  static const List<Color> galaxy = [
    black,
    darkPurple,
    wine,
    // violet,
    darkBlue,
    darkPurple,
    black
  ];

  static const List<Color> lightGalaxy = [black,lightGrey, darkGrey, golden];
  static const List<Color> darkGalaxy = [black, darkGrey, black];
}
