import 'package:flutter/material.dart';
import 'package:untitled1/Screens/Login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 6),(){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
        return OnBordingScreen();
      }), (route) => false);
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextLiquidFill(
            text: 'Dot Job',
            waveColor: Colors.white,
            boxBackgroundColor: Colors.black,
            textStyle: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),

          ),
        )
      ),
    );
  }
}