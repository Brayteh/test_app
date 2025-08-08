import 'package:flutter/material.dart';
import 'package:test_app/Theme/buttonsOben.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/homePage.png"),fit: BoxFit.cover),),
          ),
          Positioned(top: 80,left: 0,right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal, padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row( 
                children: [
                  buildGlassButton("Flights", Icons.airplanemode_active),
                  SizedBox(width: 16,),
                  buildGlassButton("Hotels", Icons.hotel),
                  SizedBox(width: 16,),
                  buildGlassButton("Car rental ", Icons.car_rental),
                  SizedBox(width: 16,),
                  buildGlassButton("Trains", Icons.train),
                ],
              ),
            ),),
        ],

              ),
              );
  }
}