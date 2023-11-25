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
      body: Container(
        margin: EdgeInsets.only(top: 200),
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          children: [
            SizedBox(height: 40,),
            TextFormField(
              controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              fillColor: Colors.grey.shade100,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
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
      ),
    );
  }
}
