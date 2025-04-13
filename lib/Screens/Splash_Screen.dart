import 'dart:async';
import 'package:flutter/material.dart';
import 'NewLoginScreen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
  Navigator.pushReplacement(context, MaterialPageRoute(
  builder: (context) => NewLoginScreen(),));
    });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/logo.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "NU Attendance Portal",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Color(0xFF2F0F6D)),
          )
        ]),
      ),
    );
  }
}
