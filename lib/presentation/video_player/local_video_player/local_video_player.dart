import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/video_info.dart';
import 'package:quiz_game_demo/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:video_player/video_player.dart';

class LocalVideoPlayer extends StatefulWidget {
  final VideoInfo videoInfo;
  LocalVideoPlayer(this.videoInfo, {Key key}) : super(key: key);

  @override
  _LocalVideoPlayerState createState() => _LocalVideoPlayerState(videoInfo);
}

class _LocalVideoPlayerState extends State<LocalVideoPlayer> {
  final VideoInfo videoInfo;
  bool firstWas = false, secondWas = false, thirdWas = false;
  VideoPlayerController _controller;

  _LocalVideoPlayerState(this.videoInfo);
  @override
  void initState() {
    super.initState();
    //Pre-set the player controller with asset video
    _controller =
        VideoPlayerController.asset('assets/videos/${videoInfo.id}.mp4');

    //Local variables to make code more simple
    Duration option0Time = videoInfo.optionsTimes[0],
        option1Time = videoInfo.optionsTimes[1],
        option2Time = videoInfo.optionsTimes[2];

    //Init and play the video
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();

    //Set the video listeners
    _controller.addListener(() {
      setState(() {});
      if (_controller.value.isPlaying) {
        //If time on the video is same as [option0time]-1s
        if (option0Time.inSeconds - 1 == _controller.value.position.inSeconds &&
            !firstWas) {
          //Then set the flag to true
          firstWas = true;
          //And delay a future which waits for its milliseconds + 500ms
          //(previously substracted 1000ms (1s)) so it has 500ms for computings
          Future.delayed(
              Duration(
                  milliseconds: (option0Time.inMilliseconds -
                          option0Time.inSeconds * 1000) +
                      500),
              //After that time add an Event to the BLoC
              () =>
                  context.bloc<QuizBloc>().add(QuizEvent.optionWasOnVideo(0)));
        } else if (option1Time.inSeconds - 1 ==
                _controller.value.position.inSeconds &&
            !secondWas) {
          secondWas = true;
          Future.delayed(
              Duration(
                  milliseconds: (option1Time.inMilliseconds -
                          option1Time.inSeconds * 1000) +
                      500),
              () =>
                  context.bloc<QuizBloc>().add(QuizEvent.optionWasOnVideo(1)));
        } else if (option2Time.inSeconds - 1 ==
                _controller.value.position.inSeconds &&
            !thirdWas) {
          thirdWas = true;
          Future.delayed(
              Duration(
                  milliseconds: (option2Time.inMilliseconds -
                          option2Time.inSeconds * 1000) +
                      500),
              () =>
                  context.bloc<QuizBloc>().add(QuizEvent.optionWasOnVideo(2)));
        }
      }
      if (!_controller.value.isPlaying && firstWas) {
        context.bloc<QuizBloc>().add(QuizEvent.videoEnded());
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        height: sizeHelper.playerHeight,
        child: VideoPlayer(_controller));
  }
}
