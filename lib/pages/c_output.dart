import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class C_Output extends StatelessWidget {
  const C_Output ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
      ),
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            // height: 500,
            child: Container(
              child: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/code-wizard-932a2.appspot.com/o/files%2FC%20Output1.pdf?alt=media&token=cf92b372-4eda-435d-b890-2662e285166c&_gl=1*13nxjqs*_ga*MjQ4MDkwOTk0LjE2OTE1MDM3NjA.*_ga_CW55HF8NVT*MTY5NzM1NDc0NC4zNy4xLjE2OTczNTUwNTkuNDcuMC4w'),
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