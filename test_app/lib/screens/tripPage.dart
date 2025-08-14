
import 'package:flutter/material.dart';
import 'dart:ui';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15), // Blur 
        child: Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.80,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),  
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Image.asset("images/paris.jpg", height: 250)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Paris",
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold,),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.favorite_border, color: Colors.white),
                      SizedBox(width: 4),
                      Text("1,2 K", style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8),
              Text(
                "Book now for a special trip in Paris, Enjoy!",
                style: TextStyle(color: Colors.grey[300]),
              ),
              const SizedBox(height: 16),
              const Text("Ab 1,600 €", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              const Divider(color: Colors.grey),

              Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Text("Reviews", style: TextStyle(color: Colors.grey[400])),
                const SizedBox(height: 6),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                  Icon(Icons.star, color: Colors.amber),
                  Text("4.0", style: TextStyle(color: Colors.white)),
                ]),
              ]),
              const SizedBox(height: 20),

              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
            child: ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(
             padding: EdgeInsets.zero,
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(10),
                    ),
             elevation: 10,),
                  
                   child: Ink(
                           decoration: BoxDecoration(
                             gradient: LinearGradient(
                               colors: [
                                 Color.fromARGB(255, 3, 57, 119), //  first color
                                 Color.fromARGB(255, 7, 107, 220), // second color 
                               ],
                               begin: Alignment.centerLeft,
                               end: Alignment.centerRight,
                             ),
                             borderRadius: BorderRadius.circular(10),
                           ),
                             child: Container(
                             alignment: Alignment.center,
                             child: Text(
                               "Book now",
                               style: Theme.of(context).textTheme.bodyMedium,
                             ),
                           ),
                   ),
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
