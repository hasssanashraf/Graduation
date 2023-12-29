import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateCV extends StatefulWidget {
  const CreateCV({super.key});

  @override
  State<CreateCV> createState() => _CreateCVState();
}

class _CreateCVState extends State<CreateCV> {
void selectImage(){

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child:
        SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Create CV' ,style: TextStyle(
                          color:Color(0xFF379AC7),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Text(
                    'Personal Details',
                    style: TextStyle(
                        color: Color(0xFF223263),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(height: 16,),
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 64,
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage('https://www.pngarts.com/files/5/Cartoon-Avatar-PNG-Image-Transparent.png'),
                        ),
                        Positioned(child: IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.add_a_photo),
                        ),
                        bottom: -10,
                          left: 80,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'First name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Last name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'HeadLine ',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.view_headline,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Phone ',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'Address ',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Color(0xFF9098B1),
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(
                      hintText: 'City ',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.location_city,
                        color: Color(0xFF9098B1),
                      ),
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
