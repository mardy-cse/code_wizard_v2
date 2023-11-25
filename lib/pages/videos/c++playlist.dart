import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class cplusplaylist extends StatefulWidget {
  const cplusplaylist({super.key});

  @override
  State<cplusplaylist> createState() => _cplusplaylistState();
}

class _cplusplaylistState extends State<cplusplaylist> {
  final videourl= 'https://www.youtube.com/watch?v=0T4mPpbNs_8&list=PLgH5QX0i9K3q0ZKeXtF--CZ0PdH1sSbYL';
  final videourlq= 'https://www.youtube.com/watch?v=aAJCvPG3Lqo&list=PLgH5QX0i9K3q0ZKeXtF--CZ0PdH1sSbYL&index=2';
  final videourlw= 'https://www.youtube.com/watch?v=34GzO42qX2k&list=PLgH5QX0i9K3q0ZKeXtF--CZ0PdH1sSbYL&index=3';
  final videourle= 'https://www.youtube.com/watch?v=M8CuzjliVqk&list=PLgH5QX0i9K3q0ZKeXtF--CZ0PdH1sSbYL&index=4';

  late YoutubePlayerController _Cintro;
  late YoutubePlayerController _Csintax;
  late YoutubePlayerController _Csintaxm;
  late YoutubePlayerController _Csintaxmm;


  @override
  void initState(){
    final videoID= YoutubePlayer.convertUrlToId(videourl);
    final videoIDq= YoutubePlayer.convertUrlToId(videourlq);
     final videoIDw= YoutubePlayer.convertUrlToId(videourlw);
     final videoIDe= YoutubePlayer.convertUrlToId(videourle);
    _Cintro = YoutubePlayerController(initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

    _Csintax = YoutubePlayerController(initialVideoId: videoIDq!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );
    _Csintaxm = YoutubePlayerController(initialVideoId: videoIDw!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );
    _Csintaxmm = YoutubePlayerController(initialVideoId: videoIDe!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Video Tutorial',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text('C++ Programming language Introduction' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Cintro,
                showVideoProgressIndicator: true,
              ),

              const SizedBox(height: 30,),
              const Text('Translator program' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Csintax,
                showVideoProgressIndicator: true,
              ),
                  const SizedBox(height: 30,),
              const Text('Software Isatallation' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Csintaxm,
                showVideoProgressIndicator: true,
              ),
                  const SizedBox(height: 30,),
              const Text('First C++ program' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Csintaxmm,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        )
    );
  }
}