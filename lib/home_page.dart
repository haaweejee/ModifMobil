import 'package:flutter/material.dart';
import 'package:modif_mobil/about_page.dart';
import 'package:modif_mobil/index_page.dart';

class Home extends StatefulWidget{

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  int _currentIndex = 0;
  final tabs = [
    Index(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor:Color(0XFF1F1F1F) ,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0XFF454545),
        currentIndex: _currentIndex,
        iconSize: 30,
        selectedFontSize: 15,
        selectedItemColor: Colors.blueAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'About',
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}