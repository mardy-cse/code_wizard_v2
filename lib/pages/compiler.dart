import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Compiler extends StatefulWidget {
  const Compiler({super.key});

  @override
  State<Compiler> createState() => _CompilerState();
}

class _CompilerState extends State<Compiler> {
  final websiteUri = Uri.parse('https://www.online-cpp.com/online_c_compiler');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Use uri'),
            ),
            body: ListView(
              padding: EdgeInsets.all(20),
              children:  <Widget> [
                Link(
                  uri: websiteUri,
                  target: LinkTarget.defaultTarget,
                  builder: (context,openLink) => TextButton(
                      onPressed: openLink,
                      child: Text("C compiler")),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: (){
                      launchUrl(
                        websiteUri,
                        mode: LaunchMode.inAppWebView,
                      );
                    },
                    child: Text("C programming"))
              ],
            )
        )
    );
  }
}
