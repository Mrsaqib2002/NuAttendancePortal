import 'dart:async';
import 'package:flutter/material.dart';

import 'Loginscreen.dart';

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
  builder: (context) => Loginscreen(),));
    });
 }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,width: 250,

              decoration: BoxDecoration(
                color:Colors.blue,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset("assets/logo.jpg",fit:BoxFit.cover,),
            ),
           //  Image.asset("assets/logo.jpg",height: 250,width: 250,),
            Text("NU Attendance Portal",
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800,
                  color: Color(0xFF2F0F6D)),)

          ]
        ),
      ),
    );
  }
}
