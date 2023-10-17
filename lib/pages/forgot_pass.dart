import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});
  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final emailController = TextEditingController();
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Pass"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: "Email"
            ),
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value){
            }).onError((error, stackTrace){
            });
          }, child: Text("Reset Pass"))
        ],
      ),
    );
  }
}
