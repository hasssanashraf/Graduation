import 'package:flutter/material.dart';
import 'package:untitled1/Screens/LoginScreen.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({ Key? key}) : super(key: key);

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;
  @override
  void initState(){
    _pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
             child:PageView.builder(
               itemCount: demo_data.length,
               controller: _pageController,
               itemBuilder: (context,index)=>OnbordingContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                ),),

            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width* .1,
                    height: MediaQuery.of(context).size.height* .1,

                    child:
                    InkWell(
                      onTap: (){
                      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
                      },
                      child: Image.asset(
                          'assets/Images/next.png'

                      ),
                    ),
                    ),
                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
class Onboard{
  final String image, title, description;
  Onboard({
   required this.image,
    required this.title,
    required this.description,

});
}
final List<Onboard> demo_data =[
  Onboard(image: 'assets/Images/L1.png', title: 'Searching for a job ?', description: 'Our global community the best option for you'),
  Onboard(image: 'assets/Images/L2.png', title: 'Grow your network', description: 'Connect with recruiters and build your networks'),
  Onboard(image: 'assets/Images/L3.png', title: 'Get your dream job', description: 'Don’t be left out, join job library and boost your career today'),

];



class OnbordingContent extends StatelessWidget{
  const OnbordingContent ({
    Key ? key,
    required this.image,
    required this.title,
    required this.description,
}) : super(key: key);

final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Container(
          width: MediaQuery.of(context).size.width ,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                     return LoginScreen();
                            }
    )
    );

    },
                      child: Text('Skip',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Color(0xFF223263),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.1 ,),
              Image.asset(image),
              SizedBox(height: MediaQuery.of(context).size.height*0.1 ,),
              Text(title,style: TextStyle(
                fontSize: 20,
                color: Color(0xFF223263),
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(height: MediaQuery.of(context).size.height*0.03 ,),
              Text(description,style: TextStyle(

                color: Color(0xFF9098B1),
                fontWeight: FontWeight.w600,),),



            ],
          ),


    );

  }
}

