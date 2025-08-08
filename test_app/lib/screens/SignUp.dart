import 'package:flutter/material.dart';
import 'package:test_app/Theme/switching.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool term = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(alignment: Alignment.center,
            decoration:BoxDecoration(
              image: DecorationImage(image: AssetImage("images/signUp.png"),fit: BoxFit.cover),
            ) ,
          ),
          Positioned(top: 80,left: 20,
            child: Text("Sign Up",style: Theme.of(context).textTheme.headlineLarge,)
            ),
            Positioned(top: 160, left: 20,
              child: Text("First name",style: Theme.of(context).textTheme.bodyMedium ,)
              ),
              Positioned(top: 200,right: 16,left: 16,
                child: TextField(keyboardType: TextInputType.name,
                  decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: "Your first name"), ),
                  ),
              Positioned(top: 260, left: 20,
              child: Text("Last name",style: Theme.of(context).textTheme.bodyMedium ,)
              ),
              Positioned(top: 300,right: 16,left: 16,
                child: TextField( keyboardType: TextInputType.name,
                  decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: "Your last name"), ),
                  ),
              Positioned(top: 360, left: 20,
               child: Text("Date of birth",style: Theme.of(context).textTheme.bodyMedium ,)
               ),
              Positioned(top: 400,right: 16,left: 16,
                child: TextField( keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: "Your date of birth"),),
                  ),
              Positioned(top: 460, left: 20,
              child: Text("Email address",style: Theme.of(context).textTheme.bodyMedium ,)
              ),
              Positioned(top: 500,right: 16,left: 16,
                child: TextField( keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(filled: true,fillColor: Colors.white,hintText: "Your date of birth"), ),
                  ),
              Positioned(top: 600,right: 90,left: 90,
                    child: ElevatedButton(onPressed: (){},
                     child: Text("Sign up"))
                     ),
              Positioned( top: 650,
                child: Row( 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("I have read the terms and conditions",style: Theme.of(context).textTheme.labelLarge,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: MySwitch(value: term,
                       onChanged: (bool value) {setState(() {
                         term = value;
                       });}
                       ),
                    ),
                  ],
                ),),

        ],
      ),
    );
  }
}