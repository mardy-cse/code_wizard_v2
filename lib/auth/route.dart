import 'package:code_wizard_v1/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:code_wizard_v1/bottom_navbar.dart';

class route extends StatefulWidget {
  const route({Key? key}) : super(key: key);

  @override
  State<route> createState() => _routeState();
}

class _routeState extends State<route> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  BottomNavBar();
          } else {
            return  loginScreen();
          }
        },
      ),
    );
  }
}
