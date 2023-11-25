import 'dart:async';
import 'package:code_wizard_v1/auth/route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  var size,height, width;
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,

          MaterialPageRoute(builder: (context)=> route())


      );
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height*0.3),
              child: Lottie.asset('assets/animation/Animation - 1700732998831.json'),
            ),
          ),
          Container(
            child: Text('CODE WIZARD', style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),),
          )
        ],

      )
    );
  }
}
