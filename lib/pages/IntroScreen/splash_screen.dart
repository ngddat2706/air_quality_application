import 'dart:async';

import 'package:flutter/material.dart';
import 'package:air_quality_application/pages/Login/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  
  initWidget(){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
          ),
          
          Center(
            child: Container(
              child: Image.asset(
                "images/app_logo.png",
                width: 129.0,
                height: 120.0,
              ),

            ),
          )
        ],
      ),
    );
  }
}