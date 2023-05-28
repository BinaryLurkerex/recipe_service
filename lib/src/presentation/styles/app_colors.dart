import 'package:flutter/material.dart';

class AppColors {
  static const Color secondaryColor = Color(0xFFF6925C);
  static const Color backgroundColor = Color(0xFFE7EEFB);
  static const Color homeTitleColor = Color(0xFF0E0E2D);
  static const Color homeSubtitleColor = Color(0xff9A9DB0);
  static const Color leftLinear = Color(0xFFF6925C);
  static const Color rightLinear = Color(0xFFF37552);

  static const LinearGradient defaultGradient = LinearGradient(
    colors: [
      AppColors.leftLinear,
      AppColors.rightLinear,
    ],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
    tileMode: TileMode.clamp,
    stops: [0.3, 0.6],
  );
}
