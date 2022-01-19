import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:air_quality_application/pages/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:flutter/painting.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.indigo[900],
          child: ClipPath(
          clipper: BackgroudClipper(),
          child: Container(
            color: Colors.white,
            child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 130),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "QUAN TRẮC \nONLINE",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                alignment: Alignment.bottomLeft,
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Chào mừng trở lại',
                      textStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    TypewriterAnimatedText(
                      'Đăng nhập để tiếp tục',
                      textStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 150),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                  
                ),
                child: TextField(
                  cursorColor: Colors.indigo,
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.supervised_user_circle_rounded,
                      color: Colors.indigo,
                      size: 15,
                    ),
                    hintText: "Tên đăng nhập",
                    hintStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 12,
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffEEEEEE),
                ),
                child: TextField(
                  cursorColor: Colors.indigo,
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    focusColor: Colors.indigo,
                    icon: Icon(
                      Icons.lock,
                      size: 15,
                      color: Colors.indigo,
                    ),
                    hintText: "Mật khẩu",
                    hintStyle: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 12,
                      
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here
                  },
                  child: Text(
                    "Quên mật khẩu?",
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHome(),
                          )
                        );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 30),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo[900],
                  ),
                  child: Text(
                    "Đăng nhập",
                    style: TextStyle(
                      fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

            ],
        )
      
          ),
        
      ),
      
        )
        )
    );
  }
}

class BackgroudClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height*0.25);
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
