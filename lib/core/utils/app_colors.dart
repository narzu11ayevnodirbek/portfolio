import 'package:flutter/material.dart';

class AppColors {
  // Gradients (for reference only – Flutter'da dekoratsiya ichida ishlatiladi)
  static const Gradient bgGradientOnyx = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 64, 64, 64), // hsl(240, 1%, 25%)
      Color.fromARGB(255, 48, 48, 48), // hsl(0, 0%, 19%)
    ],
  );

  static const Gradient textGradientYellow = LinearGradient(
    colors: [
      Color.fromARGB(255, 255, 221, 122), // hsl(45, 100%, 72%)
      Color.fromARGB(255, 255, 214, 102), // hsl(35, 100%, 68%)
    ],
  );

  // Solid colors
  static const Color jet = Color(0xFF393939); // hsl(0, 0%, 22%)
  static const Color onyx = Color(0xFF2B2B2B); // hsl(240, 1%, 17%)
  static const Color eerieBlack1 = Color(0xFF212121); // hsl(240, 2%, 13%)
  static const Color eerieBlack2 = Color(0xFF1F1F1F); // hsl(240, 2%, 12%)
  static const Color smokyBlack = Color(0xFF121212); // hsl(0, 0%, 7%)
  static const Color white1 = Color(0xFFFFFFFF); // hsl(0, 0%, 100%)
  static const Color white2 = Color(0xFFFAFAFA); // hsl(0, 0%, 98%)
  static const Color orangeYellowCrayola = Color(
    0xFFFFDD7A,
  ); // hsl(45, 100%, 72%)
  static const Color vegasGold = Color(0xFFD4B95C); // hsl(45, 54%, 58%)
  static const Color lightGray = Color(0xFFD6D6D6); // hsl(0, 0%, 84%)
  static const Color lightGray70 = Color.fromRGBO(
    214,
    214,
    214,
    0.7,
  ); // hsla(0, 0%, 84%, 0.7)
  static const Color bittersweetShimmer = Color(0xFFB45757); // hsl(0, 43%, 51%)

  // Shadows – note: these are used in BoxShadow or Shadow objects, not as Colors directly
}
