import 'dart:ui';
import 'package:flutter/material.dart';

import 'login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email = "  ";
  String password = "  ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Image.asset(
                    "assets/logooo.png",
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    "WELCOME",
                    style: TextStyle(
                      color: textcolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: new Theme(
                            data: new ThemeData(
                              primaryColor: textcolor,
                              primaryColorDark: textcolor,
                            ),
                            child: TextFormField(
                              controller: emailController,
                              decoration: new InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                hintText: "Enter Your Email",
                                hintStyle: TextStyle(
                                  color: textcolor,
                                ),
                                fillColor: textcolor,
                                // border: new OutlineInputBorder(
                                //   borderRadius: new BorderRadius.circular(25.0),
                                //   borderSide: new BorderSide(),
                                // ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Email cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            )),
                      )),
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: new Theme(
                            data: new ThemeData(
                              primaryColor: textcolor,
                              primaryColorDark: textcolor,
                            ),
                            child: TextFormField(
                              obscureText: _obscureText,
                              controller: passwordController,
                              decoration: new InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: GestureDetector(
                                    onTap: _toggle,
                                    child: new Icon(_obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility)),
                                hintText: "Enter Your Password",
                                hintStyle: TextStyle(color: textcolor),
                                fillColor: textcolor,
                              ),
                              validator: (val) {
                                if (val.length == 0) {
                                  return "Password cannot be empty";
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                            )),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: textcolor,
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
