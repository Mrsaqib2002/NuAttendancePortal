import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //  backgroundColor: Color(0xFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 230,
              width: 230,
              alignment: Alignment.center,
              decoration: BoxDecoration(
             //   color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Image.asset(
                "assets/logo.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
