import 'package:flutter/material.dart';
import 'c_pro.dart';
import 'cplaylist.dart';
class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('VIDEOS')),
      ),
      body: GridView.count(crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const youtube()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Cprog.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('C Programming', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/cpp.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('C Plus Plus', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/java.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('Java', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/python.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('Python', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/kotlin.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('Kotlin', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/php.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('PHP', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sqlite.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('SQLite', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/html.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('HTML', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/css.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('CSS', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                    ),
                    height:140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/javascript.png')
                      ),
                    ),
                  ),
                  Container(
                      height: 39,
                      child: TextButton(onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const C_Prog()));
                      },
                          child: Text('Java Script', style: TextStyle(
                              fontSize: 20
                          ),))
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
