
import 'package:flutter_app/screens/explore.dart';
import 'package:flutter_app/screens/heart.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Heart(),
    Explore(),
    Container(),
    Container(),
    Container(),
  ];

  void onTabTapped(int index){
    setState(() {
     _currentIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        elevation: 0,
        iconSize: 32,
       

        items: [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.heart),
           
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.search),
            title: Text("Heart"),
           
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.signal),
           
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.bell,
            
          ),
         
          )],
      ),
      body: _children[_currentIndex],
    );
  }
}