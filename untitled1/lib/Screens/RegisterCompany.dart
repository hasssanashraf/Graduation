import 'package:flutter/material.dart';
import 'package:untitled1/Screens/LoginScreen.dart';


class RegisterCompany extends StatelessWidget {
  const RegisterCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,  // in Column
          child: SingleChildScrollView(
            child: Column(
                children: [
                  const SizedBox( height: 68,),
                  Image.asset('assets/Images/Dot Job1.png',
                    height: 72,
                  ),
                  const SizedBox( height: 16,),
                  Text('Welcome to Dot Job',
                    style: TextStyle(fontSize: 16,
                        color: Color(0xFF223263),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox( height: 8,),
                  Text('sign in to continue',
                    style: TextStyle(fontSize: 12,
                      color: Color(0xFF9098B1),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox( height: 28,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Full Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  const SizedBox( height: 8,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Your Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  const SizedBox( height: 8,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  const SizedBox( height: 8,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Password Again',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  const SizedBox( height: 16,),
                  ElevatedButton(onPressed: (){},
                    child: Text('Sign Up'
                      ,style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF40BFFF),
                      shadowColor: Color(0xFF40BFFF3D),
                      fixedSize: Size(MediaQuery.of(context).size.width, 57),
                    ),

                  ),
                  const SizedBox(height: 24,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('have a account?',style: TextStyle(color: Color(0xFF9098B1),
                          fontWeight: FontWeight.w700),),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context){
                                return LoginScreen();
                              }
                              )
                          );
                        },
                        child: Text('Log In',style: TextStyle(color: Color(0xff40BFFF),
                            fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),

















                ]
            ),
          ),
        ),
      ),
    );
  }
}
