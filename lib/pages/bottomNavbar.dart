import 'package:code_wizard/pages/colors.dart';
import 'package:code_wizard/pages/videos.dart';
import 'package:flutter/material.dart';
import 'cplaylist.dart';
import 'home_design.dart';
import 'compiler.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    HomeDesign(),
    Videos(),
    Compiler(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: primary,
        selectedFontSize: 15,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: 'Videos'),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: 'Compiler'),
        ],
      ),
    );
  }
}
