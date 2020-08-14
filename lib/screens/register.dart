import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:natechone/main.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signup(),
    ),
  );
}

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.pink, Colors.indigo],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.person_pin,
                        size: 80,
                        color: Colors.white70,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontFamily: 'Lemonada',
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
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
                                height: 30,
                              ),
                              Container(
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.pink,
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
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'Full Name',
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
                                      decoration: BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200),
                                      )),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Age',
                                          icon: Icon(
                                            Icons.accessibility,
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
                                      decoration: BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade200),
                                      )),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Email or Phone Number',
                                          icon: Icon(
                                            Icons.mail,
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
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 60),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.indigo,
                                ),
                                child: Center(
                                  child: FlatButton(
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            child: AlertDialog(
                                              title: Text('Hurray!!'),
                                              content: Text(
                                                  'Successfully Registered :)'),
                                              actions: [
                                                FlatButton(
                                                    onPressed: () {
                                                      Navigator.push(context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) {
                                                        return loginPage();
                                                      }));
                                                    },
                                                    child: Text('OK'))
                                              ],
                                            ));
                                      }),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 70.0),
                                  child: Row(children: <Widget>[
                                    Text(
                                      "Already have an Account?",
                                      style: TextStyle(color: Colors.indigo),
                                    ),
                                    FlatButton(
                                        child: Text(
                                          "Sign In",
                                          style: TextStyle(
                                            color: Colors.indigo,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return loginPage();
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
