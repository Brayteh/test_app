import 'package:flutter/material.dart';

class MyTheme {
  static const primaryColor = Color(0xFF86D77D);

  static ThemeData light = ThemeData(
   
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(                           // für Texte 
      headlineLarge: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),
      bodyMedium: TextStyle(fontSize: 20),
      labelLarge: TextStyle(fontSize: 16,color: Colors.green)
    ),
      appBarTheme: AppBarTheme(
        foregroundColor: const Color.fromARGB(255, 108, 194, 255),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(   // für Buttons 
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          shape: 
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 8,
        ), 
      ),
      inputDecorationTheme: InputDecorationTheme(      // für Borders
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.blue,width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
  );
}