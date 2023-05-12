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
              Padding(
                padding: const EdgeInsets.all(10.0),
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
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'DISC GOLF TUTORIALS',
                  style: kLargeLabelTextStyleGreen,
                ),
              ),
              Expanded(
                child: YouTubePlayerWidget(),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'MEET THE PROS',
                  style: kLargeLabelTextStyleGreen,
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

class YouTubePlayerWidget extends StatefulWidget {
  const YouTubePlayerWidget({super.key});

  @override
  State<YouTubePlayerWidget> createState() => _YouTubePlayerWidgetState();
}

class _YouTubePlayerWidgetState extends State<YouTubePlayerWidget> {
  List<String> videosList = <String>[
    "https://www.youtube.com/watch?v=T7Buk1Hn8jM",
    "https://www.youtube.com/watch?v=y9Zp41Z8YCM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: videosList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            childAspectRatio: 16 / 9,
          ),
          itemBuilder: (BuildContext context, int index) {
            final YoutubePlayerController controller = YoutubePlayerController(
              initialVideoId: YoutubePlayer.convertUrlToId(
                    videosList[index],
                  ) ??
                  "",
              flags: const YoutubePlayerFlags(autoPlay: false),
            );
            return YoutubePlayer(
              controller: controller,
              // showVideoProgressIndicator: true,
            );
          },
        ),
      ),
    );
  }
}

// class AboutTopic extends StatefulWidget {
//   final String videoLink;
//
//   AboutTopic({required this.videoLink});
//
//   @override
//   _AboutTopicState createState() => _AboutTopicState();
// }
//
// class _AboutTopicState extends State<AboutTopic> {
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     _controller = YoutubePlayerController(
//       initialVideoId: YoutubePlayer.convertUrlToId(widget.videoLink).toString(),
//       flags: YoutubePlayerFlags(
//           mute: false,
//           autoPlay: true,
//           disableDragSeek: true,
//           loop: false,
//           enableCaption: false),
//     );
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         bottomActions: <Widget>[
//           const SizedBox(width: 14.0),
//           CurrentPosition(),
//           const SizedBox(width: 8.0),
//           ProgressBar(isExpanded: true),
//           RemainingDuration(),
//         ],
//         aspectRatio: 4 / 3,
//         progressIndicatorColor: Colors.white,
//         onReady: () {
//           print('Player is ready.');
//         },
//       ),
//     );
//   }
// }
