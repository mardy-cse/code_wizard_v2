import 'package:code_wizard/pages/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class splashScreen extends StatefulWidget{
  @override
  State<splashScreen> createState() => _splashScreenState();

  static void isLogin(BuildContext context) {}
}

class _splashScreenState extends State<splashScreen> {
  //splashScreen _SplashScreenState = SplashServices();
  SplashServices splashScreen = SplashServices();

  @override

  void initState() {
    super.initState();
    splashScreen.isLogin(context);
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