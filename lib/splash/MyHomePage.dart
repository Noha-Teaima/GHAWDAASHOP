import 'package:flutter/material.dart';
import 'package:testeco/screens/auth_screens/login_screen.dart';
import 'dart:async';

import 'package:testeco/screens/layout_screen.dart';

import '../screens/landing_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
                // height: 200,
                child: Image(
                  height: 200,
                  width: double.infinity,
                  image: AssetImage(
                    "lib/images/GHawda.jpg",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
