import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/videos/videos.dart';gi

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    HomeScreen(),
    Videos(),
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
        selectedFontSize: 15,
        unselectedItemColor: Colors.white38,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blue.shade500,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection), label: 'Videos'),
        ],
      ),
    );
  }
}
