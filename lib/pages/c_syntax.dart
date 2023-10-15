import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
class C_Syntax extends StatelessWidget {
  const C_Syntax({super.key});

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
            height: 500,
            child: Container(
              child: SfPdfViewer.network('https://firebasestorage.googleapis.com/v0/b/code-wizard-932a2.appspot.com/o/files%2Fsyntax.pdf?alt=media&token=f30b3822-0ac6-4a7e-9f55-1d8a9a0aba41&_gl=1*1gyrl1w*_ga*MjQ4MDkwOTk0LjE2OTE1MDM3NjA.*_ga_CW55HF8NVT*MTY5NzM1MjI5OS4zNi4xLjE2OTczNTIzMzkuMjAuMC4w'),
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
