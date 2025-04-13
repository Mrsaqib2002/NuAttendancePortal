import 'package:flutter/material.dart';
import 'package:nuattendanceportal/Screens/NewLoginScreen.dart';
import 'Screens/Splash_Screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "NU Attendance Portal",
      debugShowCheckedModeBanner: false,
     // theme: ThemeData(primaryColor: Colors.white),
        theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),))
        ),
      home:splash_screen(),
    );
  }
}
