import 'package:flutter/material.dart';
import 'pages/sphash_screen.dart';
void main() {
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
