import 'package:code_wizard_v1/pages/videos/c++playlist.dart';
import 'package:flutter/material.dart';
import 'cplaylist.dart';

class Videos extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Videos',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => cplaylist(),));
                          },
                          child: _buildAllCourses(context,'assets/icons/icons8-c-programming-96.png','C')),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => cplusplaylist()));
                          },
                          child: _buildAllCourses(context,'assets/icons/icons8-c-96.png','C++')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-java-96.png','Java')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-python-96.png','Python')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-kotlin-96.png','Kotlin')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-javascript-96.png','JavaScript')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-html-96.png','HTML')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-css-96.png','CSS')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-dart-96.png','Dart')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-ruby-96.png','Ruby')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-swift-96.png','Swift')),
                      InkWell(
                          onTap: (){},
                          child: _buildAllCourses(context,'assets/icons/icons8-wordpress-96.png','Wordpress')
                      ),
                    ],
                  ),
                ),

          )
          )
        ],


      ),
    );
  }
}
Widget _buildAllCourses(BuildContext context, String path, String text){
  return Container(
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height*0.015,
      left: MediaQuery.of(context).size.height*0.015,
      right: MediaQuery.of(context).size.height*0.015,
    ),
    height: MediaQuery.of(context).size.height*0.11,
    width: MediaQuery.of(context).size.width*1,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        width: 1,
      ),
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            offset: Offset(2, 3),
            blurRadius: 10),
      ],
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width* 0.3,
          child: Image.asset(path),
        ),
        SizedBox(
          width: 3,
        ),
        Container(
          width: MediaQuery.of(context).size.width* 0.60,
          child: Text(text,
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Poppins'
            ),
          ),
        ),
      ],
    ),
  );
}

