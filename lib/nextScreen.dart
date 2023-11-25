import 'package:flutter/material.dart';
import 'pages/login_screen.dart';
import 'package:lottie/lottie.dart';
class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/nextpic.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 740, left: 95,right: 95, bottom: 0),
              height: 90,
              width: 230,
              child: TextButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) =>  loginScreen())),
                child: Text('Get Start',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 23,
                  letterSpacing: 3
                ),),),
            ),
            Container(
              margin: EdgeInsets.only(top: 300, left: 200),
              height: 400,
              width: 200,
              child: Lottie.asset('assets/nextscreen.json'),
            ),
          ],
        ),
      ),
    );
  }
}
