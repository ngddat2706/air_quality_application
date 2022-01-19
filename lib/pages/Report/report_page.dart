import 'package:flutter/material.dart';

class PaginaReport extends StatelessWidget {
  const PaginaReport({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report page"),
        backgroundColor: Colors.indigo[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            "Báo cáo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}