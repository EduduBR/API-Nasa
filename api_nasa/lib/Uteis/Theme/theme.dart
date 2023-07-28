import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Color Palette/color_palette.dart';

class ThemeApp {
 static final appTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      
      titleMedium: GoogleFonts.robotoCondensed(
          fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
     ////////////////////////////////////////////////////////////////////////
      titleLarge:  GoogleFonts.openSans(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
    ////////////////////////////////////////////////////////////////////////
    titleSmall: GoogleFonts.openSans(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.violet),
    /////////////////////////////////////////////////////////////////////////
    bodyMedium: GoogleFonts.openSans(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
    /////////////////////////////////////////////////////////////////////////
    bodySmall:  GoogleFonts.openSans(
                  fontSize: 15,
                  color: Colors.white)
              ),
    /////////////////////////////////////////////////////////////////////////
    
    



  );
}
