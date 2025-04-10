import 'package:flutter/material.dart';
import 'teacherdashboard.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
   // final usernamecontrollor=TextEditingController();
   // final passwordcontrollor=TextEditingController();
    
  bool _obscuretext=true;
  final _formkey =GlobalKey<FormState>();
    String _username =  '';
    String _password= '';
    bool _isloading=false;

    void _logincode(_username,_password){
      if(_formkey.currentState!.validate()){
        _formkey.currentState!.save();
        setState(() {
          _isloading=true;
        });
        Future.delayed(Duration(seconds:2),(){
          setState(() {
            _isloading=true;
          });
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context)=>teacherdashboard()));
        });
      }
    }

   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body:Column(
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
          Form(
            child: Column
              (
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType:TextInputType.text,
                    //controller: _username,
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter valid UserName';
                      }
                      return null;
                    },
                    onSaved: (value)=>_username=value!,

                    decoration: InputDecoration(
                      // label:Padding(
                      //   padding: const EdgeInsets.only(left: 20),
                      //   child: Text("UserName",
                      //     textDirection: TextDirection.ltr,
                      //
                      // style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      // color: Colors.black,fontSize: 15),
                      //   ),),
                        hintText: "UserName",//suffixText:"Ho" ,
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFF330881
                          ),),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(40)
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),

                        )
                    )
                ),
              ),
              Padding
                (
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    obscureText: _obscuretext,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value){
                      if(value!.length < 8)
                      {
                        return 'Password must be at least 8 characters';
                      }
                      if(!value.contains(RegExp(r'[A-Z]')))
                      {
                        return'Password must contain at least one uppercase '
                            'letter';
                      }
                      if(!value.contains(RegExp(r'[a-z]')))
                      {
                        return'Password must contain at least one lowercase '
                            'letter';
                      }
                      if(!value.contains(RegExp(r'[0-9]')))
                      {
                        return 'Password must contain at least one digit';
                      }
                      return null;
                    },
                    onSaved:(value)=> _password=value!,
                    decoration: InputDecoration(
                        hintText: "PassWord",
                        suffixIcon:IconButton(
                            onPressed: (){
                              setState(() {
                                _obscuretext= !_obscuretext;
                              });},
                            icon: Icon(_obscuretext ? Icons.visibility : Icons
                                .visibility_off,color: Color(0xFF330881),)),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xFF330881
                          ),),
                        // label:Padding(
                        //   padding: const EdgeInsets.only(left: 20),
                        //   child: Text("UserName",
                        //     textDirection: TextDirection.ltr,
                        //
                        // style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        // color: Colors.black,fontSize: 15),
                        //   ),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(40)
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),

                        )
                    )
                ),
              ),
          ]
          ),
     ),
     InkWell(
            onTap: (){
              _isloading ? null : _logincode
                (_username.toString(),_password.toString());
            },
            child: Container(
              height: 55,width: 380,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),

              ),
              child: Center(
                child:_isloading? CircularProgressIndicator():
                Text("Login", style: TextStyle(
                      color: Colors.white,
                      fontSize:25,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
     )
            ],
          )
     );
      }
}
