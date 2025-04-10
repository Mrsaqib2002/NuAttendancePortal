import 'package:flutter/material.dart';
import 'Screens/Splash_Screen.dart';
import 'Screens/admin.dart';

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
      theme: ThemeData(primaryColor: Colors.white),
      home: admin_dashboard(),
    );
  }
}
