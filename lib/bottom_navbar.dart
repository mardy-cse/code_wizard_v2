import 'package:flutter/material.dart';
import 'pages/compiler/compiler.dart';
import 'pages/home_screen.dart';
import 'pages/videos/videos.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final websiteUri = Uri.parse('https://www.programiz.com/c-programming/online-compiler/');
  List pages = [
    HomeScreen(),
    Videos(),
    Compiler(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
      if (currentIndex == 2){
        launchUrl(
          websiteUri,
          mode: LaunchMode.inAppWebView,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedFontSize: 15,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blue.shade500,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: 'Videos'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Compiler'),
        ],
      ),
    );
  }
}
