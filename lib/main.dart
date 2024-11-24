import 'package:breathescape/ui/splash_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor:Color(0xFF28152a),fontFamily: 'Acme'),
      home: SplashScreen(),
    );
  }
}