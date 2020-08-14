import 'package:flutter/material.dart';
import 'package:natechone/themes/style.dart';

class mainac extends StatefulWidget {
  @override
  _mainacState createState() => _mainacState();
}

class _mainacState extends State<mainac> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: appLogo,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Image.asset('images/loading.gif')),
          ],
        ),
      ),
    );
  }
}
