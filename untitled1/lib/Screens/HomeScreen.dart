import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/Screens/CreateCV.dart';
import 'package:untitled1/Screens/Forget_Password.dart';
import 'package:untitled1/Screens/LoginScreen.dart';
import 'package:untitled1/Screens/NavBottom.dart';
import 'package:untitled1/Screens/Send_Email.dart';
import 'package:untitled1/Screens/Login.dart';
import 'package:untitled1/Screens/User_Company.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children:  [
                AppBar(),
                SizedBox(height:MediaQuery.of(context).size.height*.025),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Explore Categories',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('See All',style: TextStyle(color:  Color(0xFF40BFFF),fontWeight: FontWeight.bold,fontSize: 15),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 20,right: 35,left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [

                      InkWell(
                        onTap: (){},
                        child: Container(
                            padding: EdgeInsets.all(16),
                            height:MediaQuery.of(context).size.height*.15,
                            width: MediaQuery.of(context).size.width*.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: .05),
                              ],
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xffEBF0FF),

                              ),
                            ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    Image.asset('assets/Images/user.png',width: 50,),
                                      SizedBox(height: 15,),
                                      Text('Profile',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 13),),
                                    ],
                                  ),
                          ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                            return CreateCV();
                          }
                          )
                          );

                        },
                        child: Container(
                        padding: EdgeInsets.all(16),
                        height:MediaQuery.of(context).size.height*.15,
                        width: MediaQuery.of(context).size.width*.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: .05),
                          ],
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffEBF0FF),

                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Images/profile.png',width: 50,),
                            SizedBox(height: 15,),
                            Text('CV',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 13),),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 20,right: 35,left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      InkWell(
                      onTap: (){},
                  child:  Container(
                        padding: EdgeInsets.all(16),
                        height:MediaQuery.of(context).size.height*.15,
                        width: MediaQuery.of(context).size.width*.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: .05),
                          ],
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffEBF0FF),

                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Images/city.png',width: 50,),
                            SizedBox(height: 15,),
                            Text('Show Companies',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 13),),
                          ],
                        ),
                      ),),
                      InkWell(
              onTap: (){},
              child:  Container(
                        padding: EdgeInsets.all(16),
                        height:MediaQuery.of(context).size.height*.15,
                        width: MediaQuery.of(context).size.width*.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: .05),
                          ],
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffEBF0FF),

                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Images/analysis.png',width: 50,),
                            SizedBox(height: 15,),
                            Text('Dashboard',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 13),),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 20,right: 35,left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      InkWell(
                      onTap: (){},
                  child:  Container(
                        padding: EdgeInsets.all(16),
                        height:MediaQuery.of(context).size.height*.15,
                        width: MediaQuery.of(context).size.width*.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: .05),
                          ],
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffEBF0FF),

                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Images/atm-card.png',width: 50,),
                            SizedBox(height: 15,),
                            Text('Payment',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 13),),
                          ],
                        ),
                      ),),
                      InkWell(
                        onTap: (){
                        },
                        child: Container(
                        padding: EdgeInsets.all(16),
                        height:MediaQuery.of(context).size.height*.15,
                        width: MediaQuery.of(context).size.width*.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: .05),
                          ],
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xffEBF0FF),

                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Images/contact-as.png',width: 50,),
                            SizedBox(height: 15,),
                            Text('Contact As',style: TextStyle(color: Color(0xFF223263),fontWeight: FontWeight.bold,fontSize: 13),),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(colors: [
            Color(0xFF009EFA),
            Color(0xFF40BFFF),
            Color(0xFF3ADADA),
           Color(0xFF4FFBDF),

            Color(0xFF1FA0FF),
            Color(0xFF12DAFB),
            Color(0xFFA7FDCC),






          ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
      ),

          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello,',style: TextStyle(color: Colors.white, fontSize: 25 ,fontWeight: FontWeight.bold),),
                        Text('Hassan Ashraf',style: TextStyle(color: Colors.white, fontSize: 20 ,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xFF83F8E3),

                        ),
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))),
                  ],
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search,
                    color:  Color(0xFF40BFFF),

                    size: 26,),
                    suffixIcon: const Icon(
                      Icons.mic,
                     color:    Color(0xFF40BFFF),

                      size: 26,


                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'Search for companies',
                    labelStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),

                  ),
                ),
              ],
            ),
          ),



    );
  }
}


