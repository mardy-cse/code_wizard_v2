import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class java extends StatefulWidget {
  const java({super.key});

  @override
  State<java> createState() => _javaState();
}

class _javaState extends State<java> {
  final videourl= 'https://www.youtube.com/watch?v=GM40xmVAalw&list=PLkyGuIcLcmx1Y7mmF5-oPZaigewD4Dm28';
  final videourl2= 'https://www.youtube.com/watch?v=m5RdvTntOTk&list=PLkyGuIcLcmx1Y7mmF5-oPZaigewD4Dm28&index=2';
  final videourl3= 'https://www.youtube.com/watch?v=BqmNJhfaqsY&list=PLkyGuIcLcmx1Y7mmF5-oPZaigewD4Dm28&index=4';
  final videourl4= 'https://www.youtube.com/watch?v=bYRpJUAB744&list=PLkyGuIcLcmx1Y7mmF5-oPZaigewD4Dm28&index=6';

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
              const Text('Java Programming language Introduction' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Cintro,
                showVideoProgressIndicator: true,
              ),

              const SizedBox(height: 30,),
              const Text('Java Programming Structure' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _Csintax,
                showVideoProgressIndicator: true,
              ),


              const SizedBox(height: 30,),
              const Text(' OOP Concept in Java' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _C3,
                showVideoProgressIndicator: true,
              ),


              const SizedBox(height: 30,),
              const Text('Function Parameter Java Programming' ,style: TextStyle(
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