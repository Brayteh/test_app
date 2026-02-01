import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:test_app/screens/buttonsOben.dart';
import 'package:test_app/screens/subCard.dart';
import 'package:test_app/screens/tripPage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

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
          _buildBody(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.white.withOpacity(0.2),
                  child: BottomNavigationBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.blue,
                    unselectedItemColor: Colors.white,
                    currentIndex: _selectedIndex,
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    items: const [
                      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
                      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
                      BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
     );
  }

  Widget _buildBody() {
    if (_selectedIndex == 0) {
      return Stack(
        children: [
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
                   builder: (context)=> TripPage(
                     image: "images/paris.jpg",
                     title: "Paris",
                     price: "Ab 1900",
                     likes: "1.2 K",
                   ),
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
                   builder: (context)=> TripPage(
                     image: "images/baalbek.jpg",
                     title: "Baalbek",
                     price: "Ab 2200",
                     likes: "1.7 K",
                   ),
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
                   builder: (context)=> TripPage(
                     image: "images/vienice.jpg",
                     title: "Vienice",
                     price: "Ab 2500",
                     likes: "1.9 K",
                   ),
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
      );
    } else {
      return Center(
        child: Text(
          _selectedIndex == 1 ? "Profile" : _selectedIndex == 2 ? "Notifications" : "Settings",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      );
    }
  }
}