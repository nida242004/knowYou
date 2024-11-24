import 'package:breathescape/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart'; // For walkthrough screen
 // Adjusted import path for AnimationDemoHome

class MyWalkthrough extends StatelessWidget {
  final List<OnbordingData> list = [
    const OnbordingData(
      titleText: Text(
        "What internet knows about you?",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      descText: Text(
        "See your private data",
        style: TextStyle(fontSize: 16),
      ),
      image: AssetImage('assets/image/fwatch.jpg'),
    ),
    const OnbordingData(
      titleText: Text(
        "How they gather your data, for ads",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      descText: Text(
        "You can stop them.",
        style: TextStyle(fontSize: 16),
      ),
      image: AssetImage('assets/image/iwatch.jpg'),
    ),
    const OnbordingData(
      titleText: Text(
        "Prevent them from keeping your data",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      descText: Text(
        "You can delete the data and can turn off personalization",
        style: TextStyle(fontSize: 16),
      ),
      image: AssetImage('assets/image/mob.jpg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      onbordingDataList: list,
      colors: const [
        Colors.white, // Background color for the first page
        Colors.red,   // Background color for the second page
        Colors.blue,  // Background color for the third page
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => const AnimationDemoHome(),
      ),
      nextButton: const Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,// Assuming `purple` is defined in your color constants
        ),
      ),
      lastButton: const Text(
        "GOT IT",
        style: TextStyle(
          color:Colors.purple,
        ),
      ),
      skipButton: const Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor:Colors.purple,
      unSelectdDotColor: Colors.grey,
    );
  }
}
