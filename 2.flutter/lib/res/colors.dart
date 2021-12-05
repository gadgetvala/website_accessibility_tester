import 'package:flutter/material.dart';

class AppColors {
  late Color backgroundColor;
  late Color primaryColor;
  late Color secondaryColor;
  late Color primaryFontColor;
  late Color borderColor;

  void initializeColor({required bool dark}) {
    backgroundColor = dark ? Color(0xff141a1e) : Color(0xffffffff);
    primaryColor = dark ? Color(0xff202a30) : Color(0xfff0f5f9);
    secondaryColor = const Color(0xff784ffe);
    primaryFontColor = dark ? Color(0xffffffff) : Color(0xff002237);
    borderColor = dark ? Color(0xff202a30) : Color(0xffffffff);
  }
}
