import 'package:flutter/material.dart';
import 'package:wat/res/res.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  final kTextTitle = GoogleFonts.playfairDisplay(
    fontSize: sizes.semiLargePadding,
    fontWeight: FontWeight.w700,
  );
  final kTextRegular = GoogleFonts.playfairDisplay();
  final kTextSubTitleFont = GoogleFonts.playfairDisplay(
    fontWeight: FontWeight.w400,
    fontSize: sizes.regularPadding,
  );
  final kTextSubTitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sizes.regularPadding,
  );
}
