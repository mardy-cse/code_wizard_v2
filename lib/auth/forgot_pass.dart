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
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/register.png'),
        fit: BoxFit.cover,
    ),
    ),
     child: Scaffold(
       backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 190, left: 20),
            child: Text('Enter your E-mail', style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
       SingleChildScrollView(
         child: Container(
           margin: EdgeInsets.only(
             top: MediaQuery.of(context).size.height*0.4,
             left: 35,
             right: 35,
           ),
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 10),
                 child: TextFormField(
                   controller: emailController,
                   decoration: InputDecoration(
                     hintText: "E-mail",
                     fillColor: Colors.grey.shade100,
                     filled: true,
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 40,),
               ElevatedButton(onPressed: (){
                 auth.sendPasswordResetEmail(email: emailController.text.toString()).then((value){
                 }).onError((error, stackTrace){
                 });
               }, child: Text("Reset Password"))
             ],
           ),
         ),
       )





        ],
       ),
      ),
    );
  }
}
