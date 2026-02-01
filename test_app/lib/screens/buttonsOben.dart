import 'dart:ui';                        //  für ImageFilter.blur()
import 'package:flutter/material.dart';  

Widget buildGlassButton(String text, IconData icon) {
  return InkWell(                            // Der InkWell umschließt jetzt alles
    onTap: () {},

    
    child: ClipRRect(                                // Unschärfe-Effekt auf den Container zu beschränken
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), //  der Glas-Effekt her       
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),                     // Transparente Farbe
            borderRadius: BorderRadius.circular(20),                   // Muss mit ClipRRect übereinstimmen
            border: Border.all(color: const Color.fromARGB(255, 20, 20, 209).withOpacity(0.4)),
          ),
          child: Row( mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: TextStyle(color: const Color.fromARGB(255, 76, 68, 232), fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8,),
             Icon(icon,color:  const Color.fromARGB(255, 76, 68, 232))
            ],
          ),
        ),
      ),
    ),
  );
}
