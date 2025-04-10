import 'package:flutter/material.dart';
import 'package:nuattendanceportal/Screens/Loginscreen.dart';

class teacherdashboard extends StatelessWidget {
  const teacherdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
          onTap: (){Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>Loginscreen()));
            },
            child: Container(
              height: 55,width: 380,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text("Logout",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:25,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
          ),
        ],
      )
    );
  }
}
