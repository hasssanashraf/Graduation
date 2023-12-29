import 'package:flutter/material.dart';
import 'package:untitled1/Screens/Forget_Password.dart';
import 'package:untitled1/Screens/HomeScreen.dart';
import 'package:untitled1/Screens/Send_Email.dart';
import 'package:untitled1/Screens/Login.dart';
import 'package:untitled1/Screens/User_Company.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  keyboardType: TextInputType.emailAddress,

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
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock,color:Color(0xFF9098B1),),
                      suffixIcon:Icon(Icons.remove_red_eye,color:Color(0xFF9098B1), )
                  ),
                ),
                const SizedBox( height: 16,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context){
                        return HomeScreen();
                      }
                      )
                  );
                },
                  child: Text('Sign In'
                    ,style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF40BFFF),
                    shadowColor: Color(0xFF40BFFF3D),
                    fixedSize: Size(MediaQuery.of(context).size.width, 57),
                  ),



                ),
                const SizedBox( height: 21,),

                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          //  thickness: 1,
                          color: Color(0xFFEBF0FF),
                          // indent:20,
                        ),
                      ),
                      SizedBox(width: 23,),
                      Center(
                        child: Container(
                          margin:  EdgeInsets.symmetric(horizontal: 8),
                          child: Text('OR',
                            style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF9098B1),),),
                        ),
                      ),
                      SizedBox(width: 23,),
                      Expanded(
                        child: Divider(
                          //thickness: 1,
                          color: Color(0xFFEBF0FF),
                          //  indent: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox( height: 16,),
                OutlinedButton.icon(
                  icon: Image.asset('assets/Images/Google.png'),
                  onPressed: (){}, label: Center(child: Text('Login with Google',
                  style: TextStyle(color: Color(0xff9098B1),
                      fontWeight: FontWeight.w700
                  ),
                )
                ),
                  style: OutlinedButton.styleFrom(
                      fixedSize: Size( MediaQuery.of(context).size.width, 57)
                  ),
                ),

                const SizedBox( height: 8,),
                OutlinedButton.icon(
                  icon: Image.asset('assets/Images/Facebook.png'),
                  onPressed: (){}, label: Center(child: Text('Login with Facebook',style: TextStyle(color: Color(0xff9098B1),
                    fontWeight: FontWeight.w700
                ),
                ),
                ),
                  style: OutlinedButton.styleFrom(
                      fixedSize: Size( MediaQuery.of(context).size.width, 57)
                  ),
                ),
                const SizedBox( height: 16,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context){
                          return Forget_Password();
                        }
                        )
                    );
                  },
                  child: Text('Forget Password',
                    style: TextStyle(color: Color(0xFF40BFFF),
                        fontWeight: FontWeight.bold),),
                ),
                const SizedBox( height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have a account?',
                      style: TextStyle(color: Color(0xFF9098B1),
                          fontWeight: FontWeight.bold),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context){
                              return User_Company();
                            }
                            )
                        );
                      },
                      child: Text('Register',
                        style: TextStyle(color: Color(0xFF40BFFF),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}



