import 'package:flutter/material.dart';
import 'package:untitled1/Screens/CreateCV.dart';
import 'package:untitled1/Screens/HomeScreen.dart';
import 'package:untitled1/Screens/NavBottom.dart';
import 'package:untitled1/Screens/Send_Email.dart';
import 'package:untitled1/Screens/Forget_Password.dart';
import 'Screens/SplashScreen.dart';
import 'Screens/User_Company.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
