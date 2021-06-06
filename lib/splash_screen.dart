import 'package:flutter/material.dart';
import 'package:modif_mobil/home_page.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
          () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0XFF1F1F1F),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('images/launch_screen.png',
                        width: 250,
                        height: 250),
            Text("Build Your Own Car",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

