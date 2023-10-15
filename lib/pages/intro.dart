import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class C_Intro extends StatefulWidget {
  const C_Intro({super.key});
  @override
  State<C_Intro> createState() => _C_IntroState();
}

class _C_IntroState extends State<C_Intro> {
  final CollectionReference _cprogramming =
      FirebaseFirestore.instance.collection('cprogramming');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro"),
      ),
      body: Stack(
        children: [
          Container(
            height: 500,
            child: Container(
              child: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/code-wizard-932a2.appspot.com/o/files%2FC_intro1.pdf?alt=media&token=824567f4-485f-46c1-aa4e-0341a6e33244&_gl=1*16oz3f*_ga*MjQ4MDkwOTk0LjE2OTE1MDM3NjA.*_ga_CW55HF8NVT*MTY5NzMxMDcwMS4zNS4xLjE2OTczMTEwNTguNDYuMC4w'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 700),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                },
                    child: Text("Docs")),
                ElevatedButton(onPressed: (){},
                    child: Text("Video")),
                ElevatedButton(onPressed: (){},
                    child: Text("Code")),

              ],
            ),
          ),
        ],
      )
    );
  }
}


//Database Fetch
/*
StreamBuilder(
          stream: _cprogramming.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white70),
                      margin: const EdgeInsets.all(10),
                      child: ListTile(

                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            documentSnapshot['name'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Text(
                          documentSnapshot['descrip'],
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  });
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
 */