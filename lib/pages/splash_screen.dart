import 'dart:async';
import 'login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> loginScreen())
      );
    });
  }
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/SplashScreen.png'),
          fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset('assets/animation_lma3hgi7.json'),
              Text('CODE WIZARD', style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
                letterSpacing: 5,
              ),),
              SizedBox(
                height: 10,
              ),
              Text('Learn Code With CODE WIZARD', style: TextStyle(
                fontSize: 15,
                color: Colors.white70,
                letterSpacing: 3,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}