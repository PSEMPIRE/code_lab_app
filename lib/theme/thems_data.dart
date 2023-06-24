import 'package:code_lab/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ThemeDataOfApp {
  TextStyle UsedTextstyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.indigo,
  );
  TextStyle LastusedTextstyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.green,
  );
  // ThemeDataOfApp({
  //   required Function() getTheme,
  // });

  ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    textTheme: GoogleFonts.tajawalTextTheme(),
    primaryColorLight: primaryColor,
    

    // useMaterial3: true,
  );
}
