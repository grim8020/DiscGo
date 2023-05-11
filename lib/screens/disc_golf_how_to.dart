import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DiscGolfHowTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.green),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              'images/DiscGo.png',
              width: MediaQuery.of(context).size.width * 0.2,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'PLAY LIKE THE PROS:',
                style: kTitleLargeTextStyleBlack,
              ),
              Text(
                'RESOURCES FOR DISC GOLF SUCCESS',
                style: kMediumLabelTextStyleBlack,
              ),
              Divider(),
              Text(
                'DISC GOLF TUTORIALS',
                style: kLargeLabelTextStyleBlack,
              ),
              SizedBox(
                child: YouTubePlayerTutorial(
                  videoLink: 'https://www.youtube.com/watch?v=iSjQ31nxMlA',
                ),
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class YouTubePlayerTutorial extends StatefulWidget {
  final String videoLink;

  YouTubePlayerTutorial({required this.videoLink});

  @override
  _YouTubePlayerTutorialState createState() => _YouTubePlayerTutorialState();
}

class _YouTubePlayerTutorialState extends State<YouTubePlayerTutorial> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoLink).toString(),
      flags: YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: true,
          loop: false,
          enableCaption: false),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        bottomActions: <Widget>[
          const SizedBox(width: 14.0),
          CurrentPosition(),
          const SizedBox(width: 8.0),
          ProgressBar(isExpanded: true),
          RemainingDuration(),
        ],
        aspectRatio: 4 / 3,
        progressIndicatorColor: Colors.white,
        onReady: () {
          print('Player is ready.');
        },
      ),
    );
  }
}
