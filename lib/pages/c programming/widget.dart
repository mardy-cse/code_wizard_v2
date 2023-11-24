import 'package:flutter/material.dart';



Widget _buildPricaution(BuildContext context, String path, String text) {
  return Container(
    margin: EdgeInsets.only(top: 5, bottom: 5),
    padding: EdgeInsets.all(8),
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      border: Border.all(color: Color(0xFF11249F)),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(3, 3),
          blurRadius: 5,
        ),
      ],
      gradient: LinearGradient(
        colors: [
          Colors.white,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .22,
          padding: EdgeInsets.only(right: 10),
          child: Image.asset(path),
        ),
        Container(
          width: MediaQuery.of(context).size.width * .69,
          padding: EdgeInsets.only(left: 10),
          child: Text(text),
        ),
      ],
    ),
  );
}
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: _buildPricaution(context, 'assets/image.png', 'Sample Text'),
    ),
  );
}
