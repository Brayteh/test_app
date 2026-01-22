import 'package:flutter/material.dart';
import 'package:test_app/Theme/switching.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool term = false;
  final _formKey = GlobalKey<FormState>();
  final _passCtrl = TextEditingController();
  final _confPassCtrl = TextEditingController();

    @override
  void dispose() {
    _passCtrl.dispose();
    _confPassCtrl.dispose();
    super.dispose();
  }

    void _submit() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Done!",
          ),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
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
              Positioned(top: 560, left: 20,
              child: Text("Password",style: Theme.of(context).textTheme.bodyMedium ,)
              ),
              Positioned(top: 600,right: 16,left: 16,
                child: TextFormField( 
                  controller: _passCtrl,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,fillColor: Colors.white,
                    hintText: "password"),
                    validator:(value){
                      final v = value?.trim() ?? "";
                      if (v.isEmpty) return "please write a password";
                      if (v.length > 5) return "Please use at least 5 characters";
                      return null;
                    }
                     ),
                  ),
              Positioned(top: 660, left: 20,
              child: Text("Confirm password",style: Theme.of(context).textTheme.bodyMedium ,)
              ),
              Positioned(top: 700,right: 16,left: 16,
                child: TextField( 
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,fillColor: Colors.white,
                    hintText: "confirm password"), ),
                  ),    
              Positioned(top: 760,right: 90,left: 90,
                    child: ElevatedButton(onPressed: _submit,
                     child: Text("Sign up"))
                     ),
              Positioned( top: 800,
                child: Row( 
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
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