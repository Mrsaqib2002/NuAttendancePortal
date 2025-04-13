import 'package:flutter/material.dart';
import 'package:nuattendanceportal/Screens/NewLoginScreen.dart';

class teacherdashboard extends StatelessWidget {
  const teacherdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Teacher Dashboard", style: TextStyle(
        fontSize: 32,
        color: Colors.green,
        fontWeight: FontWeight.bold,),),),
      backgroundColor: Colors.white,
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          InkWell(
          onTap: (){Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>NewLoginScreen()));
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
