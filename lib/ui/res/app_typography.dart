import 'package:flutter/material.dart';
import 'package:surf_places/ui/res/app_colors.dart' as app_colors;

class AppTypography {
  static const fs16w400Regular = TextStyle(
    fontSize: 16.0,
    //height: 1.25,
    fontWeight: FontWeight.w400,
  );

  static const fs40Bold = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: app_colors.AppColors.appTextColor,
  );

  static const fs14w700Roboto = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto',
    color: Colors.white,
  );

  static const fs16BoldRoboto = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    color: Colors.black,
  );

  static const fs14w400Roboto = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
    color: Color(0xff7C7E92),
  );
}
