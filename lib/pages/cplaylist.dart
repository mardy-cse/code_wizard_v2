import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class youtube extends StatefulWidget {
  const youtube({super.key});

  @override
  State<youtube> createState() => _youtubeState();
}

class _youtubeState extends State<youtube> {
  final videourl= 'https://www.youtube.com/watch?v=982nK2Vdk_o&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=1';
  final videourlq= 'https://www.youtube.com/watch?v=37ihwOpP4PE&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=3';
  late YoutubePlayerController _Cintro;
  late YoutubePlayerController _Csintax;

  @override
  void initState(){
    final videoID= YoutubePlayer.convertUrlToId(videourl);
    final videoIDq= YoutubePlayer.convertUrlToId(videourlq);
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

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            const Text('C Programming language Introduction' ,style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
            YoutubePlayer(controller: _Cintro,
              showVideoProgressIndicator: true,
            ),

            const SizedBox(height: 30,),
            const Text('C Programming Syntex' ,style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),),
            YoutubePlayer(controller: _Csintax,
              showVideoProgressIndicator: true,
            )

          ],
        )
    );
  }
}