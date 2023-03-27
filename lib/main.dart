import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:project2/pages/login_page.dart';


void main() {
  runApp(AutikidApp());
}

class AutikidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: "assets/images/photo_2023-03-19_02-11-31.jpg",
            nextScreen: LogInPage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Color(0xff71c6db)));
  }
}

