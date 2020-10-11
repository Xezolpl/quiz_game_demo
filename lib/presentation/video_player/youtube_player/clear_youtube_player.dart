import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../options_content/options_content.dart';
import '../replay_content/replay_content.dart';

///NOT USED NOW - CHANGED TO VIDEO PLAYER FROM ASSET
class ClearYoutubePlayer extends StatefulWidget {
  final String videoId;
  final int startTime, endTime;
  final List<QuizOption> randomisedOptions, validOptions;

  ClearYoutubePlayer({
    @required this.randomisedOptions,
    @required this.validOptions,
    @required this.videoId,
    @required this.startTime,
    @required this.endTime,
    Key key,
  }) : super(key: key);

  @override
  ClearYoutubePlayerState createState() {
    return ClearYoutubePlayerState(
        randomisedOptions: randomisedOptions,
        validOptions: validOptions,
        videoId: videoId,
        startTime: startTime,
        endTime: endTime);
  }
}

class ClearYoutubePlayerState extends State<ClearYoutubePlayer> {
  bool isVideoHidden = true;
  bool isVideoInitialized = false;
  YoutubePlayerController ytController;
  Widget actualContainerContent = Container();

  final String videoId;
  final int startTime, endTime;
  final List<QuizOption> randomisedOptions, validOptions;

  ClearYoutubePlayerState(
      {@required this.videoId,
      @required this.randomisedOptions,
      @required this.validOptions,
      @required this.startTime,
      @required this.endTime});

  @override
  void initState() {
    super.initState();
    //setup ytController
    ytController = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
          enableCaption: false,
          hideControls: true,
          autoPlay: false,
          disableDragSeek: true,
          startAt: startTime,
          endAt: endTime,
          hideThumbnail: true,
          controlsVisibleAtStart: false),
    );
    //show options container
    showOptionsContainer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          height: sizeHelper.playerHeight,
          child: YoutubePlayer(
            controller: ytController,
            onReady: _initializeVideo,
            onEnded: isVideoInitialized ? showReplayContainer : (_) {},
          ),
        ),
        Visibility(
          child: Container(
            height: sizeHelper.playerHeight,
            color: Colors.black,
            padding: EdgeInsets.all(10),
            child: actualContainerContent,
          ),
          visible: isVideoHidden,
        ),
      ],
    );
  }

  ///Used only once per video, when the video is ready (buffered)
  void _initializeVideo() async {
    ytController.mute();
    ytController.play();
    await Future.delayed(Duration(seconds: 10), () {
      ytController.pause();
      isVideoInitialized = true;
    });
  }

  ///Used many times to play and replay the video
  void playInitializedVideo() {
    if (isVideoInitialized) {
      showLoadingContainer();
      ytController.seekTo(Duration(seconds: startTime - 1));
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          isVideoHidden = false;
        });
        ytController.unMute();
      });
    }
  }

  void showReplayContainer(dynamic _) {
    setState(() {
      isVideoHidden = true;
      actualContainerContent = ReplayContent(validOptions);
    });
  }

  void showOptionsContainer() {
    isVideoHidden = true;
    setState(() {
      actualContainerContent = OptionsContent(randomisedOptions);
    });
  }

  void showLoadingContainer() {
    isVideoHidden = true;
    setState(() {
      actualContainerContent = Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
