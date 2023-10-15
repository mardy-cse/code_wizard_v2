import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(codeWizard());
}
class codeWizard extends StatelessWidget {
  const codeWizard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Programming Language Learning App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: splashScreen(),
    );
  }
}
