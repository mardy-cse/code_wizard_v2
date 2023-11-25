import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../bottom_navbar.dart';
import 'register_screen.dart';
import 'forgot_pass.dart';
import 'package:code_wizard_v1/pages/home_screen.dart';
class loginScreen extends StatefulWidget {
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final formKey = GlobalKey<FormState>();
  String email ="",pass="";
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 25),
              child: Text('Welcome \nTo CodeWizard', style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.4,
                  left: 35,
                  right: 35,
                ),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                    children: [
                      TextFormField(
                        onChanged: (value){
                          email=value;
                        },
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        onChanged: (value){
                          pass=value;
                        },
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: "Password",
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          suffix: GestureDetector(onTap: (){
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                            child: Icon(_obscureText ?
                            Icons.visibility_off : Icons.visibility,
                            size: 20,
                            color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Enter Password";
                          }else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 40,),
                      SizedBox(
                        height: 45,
                        width: 90,
                        child: ElevatedButton(onPressed: ()async{
                          FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass)
                              .then((value) {
                            if(formKey.currentState!.validate()){
                              print("Successfull");
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => BottomNavBar()),
                              );
                            }else{
                              print('Unsuccessful');
                            }
                          });
                          try {
                            UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: email,
                                password: pass,
                            );
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                          }
                        },
                            child: Text('Sign In', style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                            ),)),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPass()));
                      }, child: Text('Forget password?')),
                      SizedBox(height: 20,),
                      SizedBox(
                        height: 50,
                        width: 160,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> register()));
                        },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                            child: Text('Create Account', style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                            ),)),
                      ),
                    ],
                ),
                  ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
