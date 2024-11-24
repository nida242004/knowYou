import 'dart:async'; // For Timer functionality
import 'package:breathescape/ui/home.dart';
import 'package:breathescape/ui/walkthrough.dart';
import 'package:flutter/material.dart'; // For Flutter UI framework
import 'package:shared_preferences/shared_preferences.dart'; // For storing preferences

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// Check whether the app is being opened for the first time
  Future<void> checkFirstSeen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool _seen = (preferences.getBool('seen') ?? false);

    if (_seen) {
      // Navigate to the Home Screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => AnimationDemoHome()),
      );
    } else {
      // Navigate to the Walkthrough Screen
      preferences.setBool('seen', true);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyWalkthrough()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    // Timer to delay splash screen for 2 seconds
    Timer(Duration(milliseconds: 2000), checkFirstSeen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background color for Splash Screen
          Container(
            decoration: BoxDecoration(color: Color(0xFF28A3DD)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // App Logo
                        Container(
                          width: 200,
                          height: 100,
                          child: Image.asset("assets/image/logo1.png"),
                        ), // Replaced Padding with SizedBox,

                        const SizedBox(
                            height: 15.0), // Replaced Padding with SizedBox
                        // App Tagline
                        const Text(
                          "KNOW YOU",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
