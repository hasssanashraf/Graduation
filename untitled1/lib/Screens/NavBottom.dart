import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/Screens/HomeScreen.dart';
import 'package:untitled1/Screens/LoginScreen.dart';


class NavBottom extends StatefulWidget {
  const NavBottom({Key ? key}):super(key: key);

  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int index = 0;
  static const List<Widget> _widgetOptioans = <Widget> [
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptioans.elementAt(index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF40BFFF),
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              activeIcon: SizedBox(height:24,
                  child: Icon(Icons.access_alarm,)),
              icon: SizedBox(
                height: 24,
                child: Icon(Icons.access_time_filled,),
              ),
              label: 'Featured'
          ),
          BottomNavigationBarItem(
              activeIcon: SizedBox(height:24,
                  child: Icon(Icons.access_alarm,)),
              icon: SizedBox(
                height: 24,
                child: Icon(Icons.access_time_filled,),
              ),
              label: 'Featured'
          ),
          BottomNavigationBarItem(
              activeIcon: SizedBox(height:24,
                  child: Icon(Icons.access_alarm,)),
              icon: SizedBox(
                height: 24,
                child: Icon(Icons.access_time_filled,),
              ),
              label: 'Featured'
          ),
          BottomNavigationBarItem(
              activeIcon: SizedBox(height:24,
                  child: Icon(Icons.access_alarm,)),
              icon: SizedBox(
                height: 24,
                child: Icon(Icons.access_time_filled,),
              ),
              label: 'Featured'
          ),
        ],
        currentIndex: index,
        onTap: (int i){
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
