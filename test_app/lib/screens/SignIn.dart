import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
         Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/signIn.png"),fit: BoxFit.cover),),
          ),
      
          Positioned( top: 70,left:16 ,
            child: Text("Welcome to your Travel App",style: Theme.of(context).textTheme.headlineLarge),
            ),
            Positioned(top: 220,left: 16,
              child: Text("Sign In",style:Theme.of(context).textTheme.headlineLarge),
            ),
            Positioned(top: 320,left: 16,right: 16,
              child: TextField(decoration: InputDecoration(
                filled: true, fillColor: Colors.white,
                hintText: "Email"),),
              ),
              Positioned(top: 380,left: 16,right: 16,
                child: TextField(decoration: InputDecoration(
                  filled: true,fillColor: Colors.white,
                hintText: "Password"),),
                ),
            
        ],
      ) ,
    );
  }
}