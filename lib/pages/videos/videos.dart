import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Videos'),
        ),
      ),
    );
  }
}
