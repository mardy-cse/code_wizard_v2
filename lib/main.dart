import 'package:flutter/material.dart';
import 'pages/sphash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(codeWizard());
  runApp(codeWizard());
}
class codeWizard extends StatelessWidget {
  const codeWizard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
