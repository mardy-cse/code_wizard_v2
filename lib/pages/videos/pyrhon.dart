import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class python extends StatefulWidget {
  const python({super.key});

  @override
  State<python> createState() => _pythonState();
}

class _pythonState extends State<python> {
  final videourl= 'https://www.youtube.com/watch?v=WeuHiMgAxiI&list=PLF-F70WLa6yP0gIAowyaluE85ZBBMB6en&index=1';
  final videourl2= 'https://www.youtube.com/watch?v=Yzink_OOCak&list=PLF-F70WLa6yP0gIAowyaluE85ZBBMB6en&index=2';
  final videourl3= 'https://www.youtube.com/watch?v=JcIjS3Ue3jo&list=PLF-F70WLa6yP0gIAowyaluE85ZBBMB6en&index=3';
  final videourl4= 'https://www.youtube.com/watch?v=zUmFn7_Ctt0&list=PLF-F70WLa6yP0gIAowyaluE85ZBBMB6en&index=5';

  late YoutubePlayerController _Cintro;
  late YoutubePlayerController _Csintax;
  late YoutubePlayerController _C3;
  late YoutubePlayerController _C4;

  @override
  void initState(){
    final videoID1= YoutubePlayer.convertUrlToId(videourl);
    final videoID2= YoutubePlayer.convertUrlToId(videourl2);
    final videoID3= YoutubePlayer.convertUrlToId(videourl3);
    final videoID4= YoutubePlayer.convertUrlToId(videourl4);
    _Cintro = YoutubePlayerController(initialVideoId: videoID1!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

    _Csintax = YoutubePlayerController(initialVideoId: videoID2!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: false,
        )
    );

    _C3 = YoutubePlayerController(initialVideoId: videoID3!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

    _C4 = YoutubePlayerController(initialVideoId: videoID4!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );


    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Text('Getting Started to Python' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Cintro,
                showVideoProgressIndicator: true,
              ),

              const SizedBox(height: 30,),
              const Text('Java  Data Types & Variables' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Csintax,
                showVideoProgressIndicator: true,
              ),


              const SizedBox(height: 30,),
              const Text(' Operators in Python' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _C3,
                showVideoProgressIndicator: true,
              ),


              const SizedBox(height: 30,),
              const Text('List in Python' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _C4,
                showVideoProgressIndicator: true,
              ),

            ],
          ),
        )
    );
  }
}