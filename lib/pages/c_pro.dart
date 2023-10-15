import 'package:code_wizard/pages/c_syntax.dart';
import 'package:flutter/material.dart';
import 'c_output.dart';
import 'intro.dart';
import 'cplaylist.dart';

class C_Prog extends StatelessWidget {
  const C_Prog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C Programming"),
          centerTitle: true,
          actions:<Widget> [
      IconButton(
      icon: const Icon(Icons.play_circle),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=> youtube() ));

          // Navigator.pop(context);
        }
        )
      ],
      ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => C_Intro()));
                      },
                          child: Text("Intro", style: TextStyle(
                            fontSize: 25,
                            color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => C_Syntax()));
                      },
                          child: Text("Syntax", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => C_Output()));
                      },
                          child: Text("Output", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Comments", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Variables", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Data Types", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Constants", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Operators", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Booleans", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("If ... Else", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Switch", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("While Loop", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("For Loop", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Variables", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Data Types", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Constants", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Operators", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("Booleans", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextButton(onPressed: (){},
                          child: Text("If ... Else", style: TextStyle(
                              fontSize: 25,
                              color: Colors.black
                          ),)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}
