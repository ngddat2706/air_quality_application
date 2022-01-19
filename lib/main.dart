import 'package:flutter/material.dart';
import 'pages/BottomNavigationBar/bottom_navigation_bar.dart';
import 'pages/Login/login_page.dart';
import 'pages/IntroScreen/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
