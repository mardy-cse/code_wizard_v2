import 'package:flutter/material.dart';

import 'c_pro.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Code Wizaed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,

                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('About Us'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),

              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: Text("CODE WIZARD"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [

          Container(
            margin: EdgeInsets.only(top: 10,left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const C_Prog())),
                      child: const Text('C Programming'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('C++ Programming'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('Java'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('JavaScript'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('Python'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('Ruby'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('Dart'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('C#'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('HTML'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('CSS'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('C Programming'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton(
                      onPressed: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => const HomeScreen())),
                      child: const Text('C Programming'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          textStyle:
                          const TextStyle(fontSize: 24)),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      )
    );

  }
}
