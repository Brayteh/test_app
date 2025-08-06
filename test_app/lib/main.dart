import 'package:flutter/material.dart';
import 'package:test_app/Theme/theme.dart';
import 'package:test_app/screens/SignIn.dart';

void main() {
  runApp(const TravelApp());
  
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.light,
      home: SignInPage(),
    );
  }
}