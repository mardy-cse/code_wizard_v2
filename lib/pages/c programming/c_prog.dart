import 'package:flutter/material.dart';
class C_Prog extends StatelessWidget {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('C Programming'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'1.', 'Intro')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'2.', 'Syntax')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'3.', 'Output')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'4.', 'Comments')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'5.', 'Variables')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'6.', 'Data Types')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'7.', 'Constants')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'8.', 'Operators')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'9.', 'Booleans')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'10.', 'If...Else')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'11.', 'Switch')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'12.', 'While Loop')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'13.', 'For Loop')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'14.', 'Break & Continue')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'15.', 'Arrays')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'16.', 'Strings')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'17.', 'User Input')),
                InkWell(
                    onTap: (){

                    },
                    child: _buildPricaution(context,'18.', 'Memory Address')),
                InkWell(
                    onTap: (){
                    },
                    child: _buildPricaution(context,'19.', 'Pointers')),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildPricaution(BuildContext context, String num, String text) {
  return Container(
    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.005),
    height: MediaQuery.of(context).size.height * .09,
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.8,
            color: Colors.grey,
          ),
          top: BorderSide(
            width: 0.0,
            color: Colors.grey,
          ),
          left: BorderSide(
            width: 0.0,
            color: Colors.grey,
          ),
          right: BorderSide(
            width: 0.0,
            color: Colors.grey,
          ),
        ),
        borderRadius: BorderRadius.circular(20)
    ),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .2,
          padding: EdgeInsets.only(right: 10),
          child: Center(
            child: Text(num, style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins'
            ),),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .7,
          padding: EdgeInsets.only(left: 10),
          child: Text(text,style: TextStyle(
              fontSize: 18,
              fontFamily: 'Poppins'
          ),),
        ),
      ],
    ),
  );
}
