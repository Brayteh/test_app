import 'package:flutter/material.dart';
import 'package:test_app/screens/SignUp.dart';
import 'package:test_app/screens/homePage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
// te3rif user wel pass la nst3milon b3dn bel button 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
// user w pass lsa7i7 
  final String _correctUsername = "jakop@gmail.com";
  final String _correctPassword = "12345";

    @override
  void dispose() {
    // weg schmeißen 
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  // la tet7a2a2 mn login
  void _login() {
    final String email = _emailController.text;
    final String password = _passwordController.text;
// tiba3a bl console 
    print("the inputet email: $email");
    print("the inputet password: $password");
// shart ldu5ul lal saf7a, MaterialPageRoute saret hon w t7t mnstad3ia
    if (email == _correctUsername && password == _correctPassword){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context)=> HomePage(),)
      ); 
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text("wrong email or password!"),
          backgroundColor: const Color.fromARGB(255, 218, 174, 174),
          behavior: SnackBarBehavior.floating, // elevated
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)
          ),
          )
      );
    }

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
         Form(
          key: _formKey,
           child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("images/signIn.png"),fit: BoxFit.cover),),
            ),
         ),
      
          Positioned( top: 70,left: 8,
            child: Text("Welcome to your Travel App",style: Theme.of(context).textTheme.headlineLarge),
            ),
            Positioned(top: 220,left: 16,
              child: Text("Sign In",style:Theme.of(context).textTheme.headlineLarge),
            ),
            Positioned(top: 320,left: 16,right: 16,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                filled: true, fillColor: Colors.white,
                hintText: "Email"),),
              ),
              Positioned(top: 380,left: 16,right: 16,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordController,
                   obscureText: true,
                  decoration: InputDecoration(
                  filled: true,fillColor: Colors.white,
                hintText: "Password"),),
                ),
       
            Positioned( top: 450, right:0, left: 0,
              child: Center(
                child: SizedBox(width: 160,
                  child: ElevatedButton(
                    onPressed: _login,
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