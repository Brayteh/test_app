import 'package:flutter/material.dart';
import 'package:test_app/screens/SignUp.dart';
import 'package:test_app/screens/homePage.dart';

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
      
          Positioned( top: 70,left: 8,
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
       
            Positioned( top: 450, right:0, left: 0,
              child: Center(
                child: SizedBox(width: 160,
                  child: ElevatedButton(
                    onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));},
                     child:
                     Text("Sign In",style:TextStyle(fontWeight: FontWeight.bold),)),
                ),
              ),
            ),
            Positioned(top: 550,right: 0,left: 0,
              child: Center(
                child: TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpPage()));},
                 child: Text("if you don't have an account Sign Up here!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign:TextAlign.center,)),
              )),
              Positioned(top: 620,right: 0,left: 0,
                child: Center(child: Text("or login with",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)))),
                Positioned(top: 670,right: 0,left: 0,
                  child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.apple,color: Colors.white)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.mail,color: Colors.white)),
                    ],
                  ), ),
        ],
      ) ,
    );
  }
}