import 'package:flutter/material.dart';
import 'package:untitled1/Screens/LoginScreen.dart';
import 'package:untitled1/Screens/Send_Email.dart';
class Forget_Password extends StatelessWidget {
  const Forget_Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }
                  )
                  );

                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.05,
                      child:
                        Image.asset('assets/Images/arrow.png'),

                    ),
              ),
            ],
          ),
            SizedBox( height: MediaQuery.of(context).size.height*.08,),
            Text('Forget Password ',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700, color: Color(0xFF223263), ),
            ),
          SizedBox( height: MediaQuery.of(context).size.height*.02,),

          Text('Don\'t worry sometimes people can forget too, enter your email and we will send you  a password reset link.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xFF9098B1),),
            ),
          SizedBox( height: MediaQuery.of(context).size.height*.05,),

          TextFormField(
            keyboardType: TextInputType.emailAddress,

            decoration: InputDecoration(
              hintText: 'E-Mail',hintStyle: TextStyle(fontWeight: FontWeight.bold, color: Color(
                0xFF5C75C4),),
              border: OutlineInputBorder(),
              prefixIcon: Icon(
                Icons.send,
                color: Color(0xFF9098B1),
              ),
            ),
          ),
          SizedBox( height: MediaQuery.of(context).size.height*.04,),


          Container(
                width: MediaQuery.of(context).size.width*.92,
                  child:  ElevatedButton(onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
                      return Send_Email();
                    }
                    ) , (route) => false,
                    );

                    },
                      child: Text('Submit'
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



              ],
      ),
          )),
    );
  }
}
