import 'package:flutter/material.dart';
import 'package:untitled1/Screens/RegisterUser.dart';
import 'package:untitled1/Screens/RegisterCompany.dart';
import 'package:untitled1/Screens/LoginScreen.dart';

class User_Company extends StatelessWidget {
  const User_Company({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width*.25,
                        child: Image.asset('assets/Images/Dot Job1.png')),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.1,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      height: MediaQuery.of(context).size.height*.4,
                      width: MediaQuery.of(context).size.width*.9,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xffEBF0FF),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.01,
                          ),
                          Text('Join as a employee or company',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xff223263)),),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*.045,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                height: MediaQuery.of(context).size.height*.186,
                                width: MediaQuery.of(context).size.width*.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffEBF0FF),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width:35,
                                      height: 35,
                                        child: Image.asset('assets/Images/employee.png',)),
                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),
                                    GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context){
                                                return RegisterUser();
                                              }
                                              )
                                          );
                                        },
                                        child: Text('I’m a employee, hiring for a job',style: TextStyle(fontWeight: FontWeight.w700),)),
                                    const SizedBox(height: 8,),


                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(16),
                                height: MediaQuery.of(context).size.height*.186,
                                width: MediaQuery.of(context).size.width*.38,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffEBF0FF),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        width:35,
                                        height: 35,
                                        child: Image.asset('assets/Images/company.png',)),
                                    SizedBox(height: MediaQuery.of(context).size.height*.01,),

                                    GestureDetector(
                                        onTap: (){
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (context){
                                                return RegisterCompany();
                                              }
                                              )
                                          );
                                        },
                                        child: Text('I’m a company, looking for employee',style: TextStyle(fontWeight: FontWeight.w700),)),


                                  ],
                                ),
                              ),

                            ],
                          ),

                           SizedBox(
                             height: MediaQuery.of(context).size.height*.05,
                           ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Text('Already have an account? ', style: TextStyle(color: Color(0xFF9098B1),
                                  fontWeight: FontWeight.bold),),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context){
                                        return LoginScreen();
                                      }
                                      )
                                  );
                                },
                                child: Text('Log in',
                                  style: TextStyle(color: Color(0xFF40BFFF),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )
                        ],
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

