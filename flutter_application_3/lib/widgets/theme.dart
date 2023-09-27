import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      hintColor: darkBluish,
      //  buttonColor:darkBluish,
      // buttonTheme: ButtonThemeData(buttonColor: darkBluish),
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold)));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkcreamColor,
        hintColor: Colors.white,
        // buttonColor:lightdarkBluish,
        // buttonTheme: ButtonThemeData(buttonColor: lightdarkBluish),
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontWeight: FontWeight.bold)),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Vx.gray800;
  static Color lightdarkBluish = Vx.indigo500;
  static Color darkBluish = Color(0xff403b58);

  // static buttonColor(BuildContext context) {}
  // static Color floatingActionButtonColor(BuildContext context) {
  //   return ThemeData.estimateBrightnessForColor == Brightness.dark
  //       ? lightdarkBluish
  //       : darkBluish;
  // }
}
