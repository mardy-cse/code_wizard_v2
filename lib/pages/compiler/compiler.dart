import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Compiler extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    final websiteUri = Uri.parse('https://www.programiz.com/c-programming/online-compiler/');
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top:50),
            child: ElevatedButton(onPressed: (){
              launchUrl(
                websiteUri,
                mode: LaunchMode.inAppWebView,
              );
            }, child: Text("Compiler")),
          ),
        )

      ]
    );
  }
}
