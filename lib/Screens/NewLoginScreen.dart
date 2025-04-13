import 'package:flutter/material.dart';
import 'teacherdashboard.dart';

class NewLoginScreen extends StatefulWidget {
  NewLoginScreen({super.key});

  @override
  State<NewLoginScreen> createState() => _NewLoginScreenState();
}

class _NewLoginScreenState extends State<NewLoginScreen> {
 // final _usernameController = TextEditingController();
  //final _userpasswordController = TextEditingController();
  bool _securepassword = true;
  bool _isloading = false;
  String _username=  '';
  String _password= '';

  final _formKey = GlobalKey<FormState>();
  _Login(_username,_password) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _isloading = true;
      });
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _isloading = true;
        });
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => teacherdashboard()));
      });
    }
  }

  //
  // Future<bool> _authenticate(var username, var userpassword) async {
  //   await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
  //   return username == 'admin' && userpassword == '123'; // Mock validation
  // }

  // Future<void> _Login() async {
  //   if (_formKey.currentState!.validate()) return;
  //   setState(() {
  //     _isloading=true;
  //   });
  //   try {
  //     final isAuthenticated = await _authenticate(
  //         _usernameController.text.toString(),
  //         _userpasswordController.text.toString());
  //     if (!mounted) return;
  //     if (isAuthenticated) {
  //       Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) => admin_dashboard()));
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text("Invalid Credenitals"),
  //         backgroundColor: Colors.red,
  //       ));
  //     }
  //   } catch (e) {
  //     if (!mounted) return;
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //       content: Text("Error: $e"),
  //       backgroundColor: Colors.red,
  //     ));
  //   } finally {
  //     if (mounted) {
  //       setState(() {
  //         _isloading = false;
  //       });
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/logo.jpg"),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                              keyboardType: TextInputType.text,
                              //controller: _usernameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter valid UserName';
                                }
                                return null;
                              },
                              onSaved: (value) => _username = value!,
                              decoration: InputDecoration(
                                hintText: "UserName",
                                hintStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0xFF2F0F6D),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Color(0xFF2F0F6D)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                // disabledBorder: OutlineInputBorder(
                                //   borderSide: const BorderSide(
                                //       color: Colors.blue, width: 2),
                                //   borderRadius: BorderRadius.circular(22),
                                // ),
                                // filled: true,
                                fillColor: Colors.grey.shade200,
                              )),
                          const SizedBox(
                            height: 25,
                          ),
                          TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _securepassword,
                              //controller: _userpasswordController,
                              validator: (value){
                                if(value!.length < 6)
                                {
                                  return 'Password must be at least 8 characters';
                                }
                                // if(!value.contains(RegExp(r'[A-Z]')))
                                // {
                                //   return'Password must contain at least one uppercase '
                                //       'letter';
                                // }
                                // if(!value.contains(RegExp(r'[a-z]')))
                                // {
                                //   return'Password must contain at least one lowercase '
                                //       'letter';
                                // }
                                // if(!value.contains(RegExp(r'[0-9]')))
                                // {
                                //   return 'Password must contain at least one digit';
                                // }
                                return null;
                              },
                              onSaved:(value)=> _password=value!,

                              decoration: InputDecoration(
                                hintText: "PassWord",
                                hintStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Color(0xFF2F0F6D),
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _securepassword = !_securepassword;
                                      });
                                    },
                                    icon: Icon(
                                      _securepassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color(0xFF2F0F6D),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color: Color(0xFF2F0F6D)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(22),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.green, width: 2),
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                filled: true,
                                fillColor: Colors.grey.shade200,
                              )),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              _isloading ? null : _Login("admin","12345678");
                            },
                            child: Container(
                              height: 55,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Center(
                                child: _isloading
                                    ? CircularProgressIndicator(
                                        color: Colors.white)
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                              ),
                            ),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
