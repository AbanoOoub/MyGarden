import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_garden/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        nextScreen: HomeScreen(),
        splash: Image.asset("images/safari.png"),
        splashIconSize: 350,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
