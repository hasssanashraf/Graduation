import 'package:flutter/material.dart';
import 'package:untitled1/Screens/Forget_Password.dart';
import 'package:untitled1/Screens/LoginScreen.dart';
class Send_Email extends StatelessWidget {
  const Send_Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
        body :SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                            return LoginScreen();
                          }
                          )
                          );

                        },
                        child: Text('X',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700, color: Color(0xFF223263),),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/Images/message.png'),
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                Center(child: Container(
                  width: MediaQuery.of(context).size.width*.7,

                  child: Text('Password Reset Email Sent',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700, color: Color(0xFF223263), ),
                  ),
                )),
                SizedBox(height: MediaQuery.of(context).size.height*.01,),
                Container(
                  width: MediaQuery.of(context).size.width*.9,
                  height: MediaQuery.of(context).size.height*.09,
                    child: Center(child: Text('Your Account Security is our Priority! We\'ve Sent You a Secure link to Safely Change Your Password and Keep Your Account Protected.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xFF9098B1),),
                          textAlign: TextAlign.center,
                    ))),
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    }
                    )
                    );

                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*.9,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }
                      ) , (route) => false,
                      );

                    },
                      child: Text('Done'
                        ,style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white,
                        fontSize: 18),),
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF40BFFF),
                        shadowColor: Color(0xFF40BFFF3D),
                        fixedSize: Size(MediaQuery.of(context).size.width, 58),
                      ),

                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.02,),
                InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                        return  Forget_Password();
                      }
                      )
                      );

                    },
                    child: Text('Resend Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xFF9098B1), ),)),
              ],
            ),
          ),
        )
    );
  }
}
