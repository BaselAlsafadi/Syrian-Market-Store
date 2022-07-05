// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sym/screens/homepage.dart';
import 'package:sym/widgets/logo_fade.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LodoFade(),
            const SizedBox(
              height: 15,
            ),
            Container(
                width: 150,
                height: 150,
                child: Image.asset('assets/images/loading .gif')),
            const Text(
              "Loading..",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xffB4822C),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
