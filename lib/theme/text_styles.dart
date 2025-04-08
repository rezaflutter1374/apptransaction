// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AppTextStyles {
  static const String fontFamily = 'RobotoMono';

  static TextStyle headlineLarge(BuildContext context) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle bodyBold(BuildContext context) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle bodyRegular(BuildContext context) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static TextStyle bodyBoldWhite(BuildContext context) => TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}

class TextStyles {
  static var navBarUnselected;

  static var navBarSelected;

  static TextStyle bodyBoldWhite(BuildContext context) => TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: const Color(0xFFD5D3D3),
  );
}
