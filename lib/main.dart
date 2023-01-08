import 'package:flutter/material.dart';
import 'package:quran_app/screens/home_screen.dart';

void main() {
  runApp( QuranApp());
}

class QuranApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.routName:(context)=>HomeScreen(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
