import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeUI(),
        '/a01': (context) => A01PageUI(),
        '/a02': (context) => A02PageUI(),
        '/b01': (context) => B01PageUI(),
        // '/b02': (context) => B02PageUI(),
        // '/b03': (context) => B03PageUI(),
        // '/c01': (context) => C01PageUI(),
        // '/c02': (context) => C02PageUI(),
        // '/c03': (context) => C03PageUI(),
        // '/d01': (context) => D01PageUI(),
        // '/d02': (context) => D02PageUI(),
        // '/d03': (context) => D03PageUI(),
        // '/d04': (context) => D04PageUI(),
        // '/d05': (context) => D05PageUI(),
        // '/d06': (context) => D06PageUI(),
        // '/d07': (context) => D07PageUI(),
        // '/e01': (context) => E01PageUI(),
        // '/e02': (context) => E02PageUI(),
        // '/e03': (context) => E03PageUI(),
        // '/e04': (context) => E04PageUI(),
        // '/e05': (context) => E05PageUI(),
        // '/e06': (context) => E06PageUI(),
      },
    );
  }
}
