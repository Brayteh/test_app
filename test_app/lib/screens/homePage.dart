import 'package:flutter/material.dart';
import 'package:test_app/Theme/buttonsOben.dart';
import 'package:test_app/Theme/subCard.dart';
import 'package:test_app/screens/tripPage.dart';


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
            Positioned(top: 150,right: 16,left: 16,
              child: Row( 
                children: [
                  Expanded(
                    child: TextField( 
                      decoration: InputDecoration(filled: true,fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search,),
                      hintText: "search places"),
                    ),
                  ),
                  SizedBox(width: 8,),
                  IconButton( onPressed:(){},
                     icon: Icon(Icons.tune)),
                ],
              )),
          Positioned(top: 250, left: 0, right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  GestureDetector( onTap: (){showModalBottomSheet(context: context,isScrollControlled:true,backgroundColor: Colors.transparent,
                   builder: (context)=> TripPage(),
                   );},
                    child: subCard(
                      image: "images/paris.jpg",
                      title: "Paris",
                      price: "Ab 1900",
                      likes: "1.2 K",
                    ),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector( onTap: (){showModalBottomSheet(context: context,isScrollControlled:true,backgroundColor: Colors.transparent,
                   builder: (context)=> TripPage(),
                   );},
                    child: subCard(
                      image: "images/baalbek.jpg",
                      title: "Baalbek",
                      price: "Ab 2200",
                      likes: "1.7 K",
                    ),
                  ),
                  const SizedBox(width: 3),
                  GestureDetector( onTap: (){showModalBottomSheet(context: context,isScrollControlled:true,backgroundColor: Colors.transparent,
                   builder: (context)=> TripPage(),
                   );},
                    child: subCard(
                      image: "images/vienice.jpg",
                      title: "Vienice",
                      price: "Ab 2500",
                      likes: "1.9 K",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
     );
  }
  
  tripPage() {}
}