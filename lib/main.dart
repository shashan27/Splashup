import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:natechone/screens/mainac.dart';
import 'package:natechone/screens/register.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashscreen(),
  ));
}

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      backgroundColor: Colors.white,
      image: Image.asset('images/natech.png'),
      photoSize: 200.0,
      navigateAfterSeconds: loginPage(),
    );
  }
}

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.indigo, Colors.pink],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/natech.png'),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'Lemonada',
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100.0),
                            bottomRight: Radius.circular(100.0),
                            topRight: Radius.circular(100.0),
                            bottomLeft: Radius.circular(100.0),
                          )),
                      child: Padding(
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 60,
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.indigo,
                                        blurRadius: 20,
                                        offset: Offset(0.0, 10.0),
                                      )
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200),
                                      )),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Email or Phone Number',
                                          icon: Icon(
                                            Icons.person,
                                            color: Colors.grey,
                                          ),
                                          border: InputBorder.none,
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child: TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          suffixIcon: Icon(Icons.visibility),
                                          hintText: 'Password',
                                          border: InputBorder.none,
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 60),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.pink,
                                ),
                                child: Center(
                                  child: FlatButton(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return mainac();
                                        }));
                                      }),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Row(children: <Widget>[
                                    Text(
                                      "Don't have an account?",
                                      style: TextStyle(color: Colors.pink),
                                    ),
                                    FlatButton(
                                        child: Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            color: Colors.pink,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return signup();
                                          }));
                                        }),
                                  ]),
                                ),
                              )
                            ],
                          ))))
            ],
          )),
    );
  }
}
