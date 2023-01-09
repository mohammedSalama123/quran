import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quran_app/screens/home_screen.dart';

void main() {
  runApp(QuranApp());
}

class QuranApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
      },
      home: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.png')),
        ),
        child: AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
          duration: 3500,
          splash: Image.asset(
            'assets/images/logo.png',
          ),
          nextScreen: HomeScreen(),
          splashTransition: SplashTransition.rotationTransition,
          pageTransitionType: PageTransitionType.fade,
          splashIconSize: 250,
          centered: true,
        ),
      ),
    );
  }
}
