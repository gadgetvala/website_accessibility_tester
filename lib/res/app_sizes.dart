import 'package:flutter/material.dart';

class AppSizes {
  late Size _screenSize;

  late bool isPhone;
  late double width;
  late double height;

  late double topPadding;

  //For dynamic Sizing
  late double widthRatio;
  late double heightRatio;
  late double fontRatio;

  //Dynamic Font Sizes
  late double extraSmallFontSize;
  late double smallFontSize;
  late double mediumFontSize;
  late double regularFontSize;
  late double largeFontSize;
  late double extraLargeFontSize;
  late double jumboFontSize;

  //padding
  late double extraTinyPadding;
  late double tinyPadding;
  late double smallPadding;
  late double regularPadding;
  late double mediumPadding;
  late double semiLargePadding;
  late double pagePadding;
  late double largePadding;
  late double extraLargePadding;
  late double largerPadding;

  //tablet specific padding
  late double tabletInnerPadding;
  late double tabletOuterPadding;
  late double tabletPagePadding;
  late double tabletLargeOuterMargin;
  late double tabletExtraLargeOuterMargin;
  late double tabletSocialMediaPadding;
  late double tabletAuthCommentPadding;

  void initializeSize(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    topPadding = MediaQuery.of(context).padding.top;
    width = _screenSize.shortestSide;
    height = _screenSize.longestSide;
    isPhone = _screenSize.shortestSide < 600;
    fontRatio =
        (isPhone && _screenSize.width <= 360) ? _screenSize.width / 360 : 1.0;
    widthRatio = isPhone ? _screenSize.width / 360 : _screenSize.width / 900;
    heightRatio =
        isPhone ? _screenSize.height / 720 : _screenSize.height / 1200;
    extraSmallFontSize = 9.0 * fontRatio;
    smallFontSize = 12.0 * fontRatio;
    regularFontSize = 14.0 * fontRatio;
    mediumFontSize = 20.0 * fontRatio;
    largeFontSize = 24.0 * fontRatio;
    extraLargeFontSize = 36.0 * fontRatio;
    jumboFontSize = 48.0 * fontRatio;

    extraTinyPadding = 4.0 * widthRatio;
    tinyPadding = 6.0 * widthRatio;
    smallPadding = 8.0 * widthRatio;
    regularPadding = 12.0 * widthRatio;
    mediumPadding = 16.0 * widthRatio;
    semiLargePadding = 20.0 * widthRatio;
    pagePadding = 24.0 * widthRatio;
    largePadding = 32.0 * widthRatio;
    extraLargePadding = 48.0 * widthRatio;
    largerPadding = 52.0 * widthRatio;

    tabletOuterPadding = 144.0 * widthRatio;
    tabletInnerPadding = 76.0 * widthRatio;
    tabletPagePadding = 48.0 * widthRatio;
    tabletExtraLargeOuterMargin = 228.0 * widthRatio;
    tabletLargeOuterMargin = 172.0 * widthRatio;
    tabletSocialMediaPadding = 192.0 * widthRatio;
    tabletAuthCommentPadding = 99.0 * widthRatio;
  }

  void refreshSize(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;
    width = _screenSize.width;
    height = _screenSize.height;
  }
}
