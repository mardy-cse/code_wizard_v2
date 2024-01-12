import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class cplaylist extends StatefulWidget {
  const cplaylist({super.key});

  @override
  State<cplaylist> createState() => _cplaylistState();
}

class _cplaylistState extends State<cplaylist> {
  final videourl= 'https://www.youtube.com/watch?v=982nK2Vdk_o&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=1';
<<<<<<< Updated upstream
  final videourlq= 'https://www.youtube.com/watch?v=37ihwOpP4PE&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=3';
  late YoutubePlayerController _Cintro;
  late YoutubePlayerController _Csintax;

  @override
  void initState(){
    final videoID= YoutubePlayer.convertUrlToId(videourl);
    final videoIDq= YoutubePlayer.convertUrlToId(videourlq);
    _Cintro = YoutubePlayerController(initialVideoId: videoID!,
=======
  final videourl2= 'https://www.youtube.com/watch?v=37ihwOpP4PE&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=3';
  final videourl3= 'https://www.youtube.com/watch?v=NWhvLbIHIqI&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=4';
  final videourl4= 'https://www.youtube.com/watch?v=76UTxRliHQE&list=PL_XxuZqN0xVASsjyqiNzgjUWHbDkN2Scy&index=5';

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
>>>>>>> Stashed changes
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );

<<<<<<< Updated upstream
    _Csintax = YoutubePlayerController(initialVideoId: videoIDq!,
=======
    _Csintax = YoutubePlayerController(initialVideoId: videoID2!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: true,
          isLive: false,
        )
    );

    _C3 = YoutubePlayerController(initialVideoId: videoID3!,
>>>>>>> Stashed changes
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );
<<<<<<< Updated upstream
=======

    _C4 = YoutubePlayerController(initialVideoId: videoID4!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        )
    );


>>>>>>> Stashed changes
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

<<<<<<< Updated upstream
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
=======
        body: SingleChildScrollView(
          child: Column(
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
              ),


              const SizedBox(height: 30,),
              const Text('Basic Calculation in C' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _C3,
                showVideoProgressIndicator: true,
              ),


              const SizedBox(height: 30,),
              const Text('Variables in C Programming' ,style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),
              YoutubePlayer(controller: _C4,
                showVideoProgressIndicator: true,
              ),

            ],
          ),
>>>>>>> Stashed changes
        )
    );
  }
}