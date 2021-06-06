import 'package:flutter/material.dart';
import 'package:modif_mobil/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Modif Mobil',
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
