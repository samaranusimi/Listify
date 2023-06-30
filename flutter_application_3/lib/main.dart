import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
            primarySwatch: Colors.brown,
            fontFamily: GoogleFonts.lato().fontFamily),
        darkTheme: ThemeData(brightness: Brightness.light),
        initialRoute: "/",
        routes: {
          "/": (context) => Home_Page(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => Home_Page()
        });
  }
}
