import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/domain/entities/video_info.dart';
import 'package:quiz_game_demo/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';
import 'package:quiz_game_demo/presentation/video_player/local_video_player/local_video_player.dart';
import 'package:quiz_game_demo/presentation/video_player/options_content/options_content.dart';
import 'package:quiz_game_demo/presentation/video_player/replay_content/replay_content.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../injection.dart';
import 'options/option_widget.dart';
import 'options/option_holder.dart';
import 'widgets/check_button.dart';
import 'widgets/parameter_widget.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool firstVideo = true;
    VideoInfo lastVideo;
    List<QuizOption> optionsToContent;
    //return widget
    return WillPopScope(
      onWillPop: () {
        return Future.value(firstVideo);
      },
      child: BlocProvider<QuizBloc>(
          create: (context) =>
              getIt<QuizBloc>()..add(QuizEvent.initializeVideos()),
          child: BlocConsumer<QuizBloc, QuizState>(
              listenWhen: (p, c) => p.failureOption != c.failureOption,
              listener: (context, state) {
                //RFlutter alert
                Alert(
                        context: context,
                        type: AlertType.error,
                        desc:
                            "An error occured. Please restart the application.",
                        title: "Error",
                        image: Image.asset('assets/error.png'))
                    .show();
              },
              buildWhen: (p, c) => (p.isVideoPlaying != c.isVideoPlaying ||
                  p.isChecked != c.isChecked ||
                  p.currentVideo.id != c.currentVideo.id),
              builder: (context, state) {
                //If loading the options - transparent to see the route under it
                if (state.currentOptions.isEmpty) {
                  return Container(
                    color: Colors.transparent,
                  );
                }
                //Check is the video the first one or other
                if (lastVideo != null &&
                    lastVideo.id != state.currentVideo.id) {
                  firstVideo = false;
                }
                //Load variables
                if (lastVideo == null ||
                    lastVideo.id != state.currentVideo.id) {
                  optionsToContent = state.currentOptions.sublist(3, 6);
                  lastVideo = state.currentVideo;
                }

                //Set up the top widget
                Widget topWidget = OptionsContent(optionsToContent);
                if (state.isVideoPlaying) {
                  topWidget = LocalVideoPlayer(state.currentVideo);
                }
                if (state.isChecked && !state.isVideoPlaying) {
                  topWidget = ReplayContent(state.validOptions);
                }

                //Return the widget
                return Container(
                    color: LIGHT_GREY_COLOR,
                    child: Column(children: [
                      //It can be replay content, options content or video player
                      Container(
                          width: double.infinity,
                          height: sizeHelper.playerHeight,
                          color: Colors.black,
                          child: topWidget),
                      //Options and parameters
                      Expanded(
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: sizeHelper.quizTopPadding),
                          child: Stack(
                            children: [
                              //Parameters
                              Container(
                                padding: EdgeInsets.only(top: 5),
                                alignment: Alignment.topRight,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ParameterWidget('param1'),
                                    SizedBox(
                                        width: sizeHelper.freeSpaceScalled),
                                    ParameterWidget('param2'),
                                    SizedBox(
                                        width: sizeHelper.freeSpaceScalled),
                                    ParameterWidget('param3'),
                                    SizedBox(
                                        width: sizeHelper.freeSpaceScalled),
                                    ParameterWidget('param4'),
                                    //Its padding right(10) + free space between Tile and
                                    //InfoWidget(5) + width of the Info Widget (optionHeight)
                                    SizedBox(
                                        width: 15 + sizeHelper.optionHeight),
                                  ],
                                ),
                              ),
                              //Option placeholders
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                                child: Column(children: [
                                  SizedBox(
                                      height: sizeHelper.paramsTextMaxHeight +
                                          sizeHelper.freeSpaceScalled),
                                  OptionHolderWidget(1, OptionWidget(0)),
                                  SizedBox(height: sizeHelper.freeSpaceScalled),
                                  OptionHolderWidget(2, OptionWidget(1)),
                                  SizedBox(height: sizeHelper.freeSpaceScalled),
                                  OptionHolderWidget(3, OptionWidget(2)),
                                ]),
                              ),
                              //Draggable options
                              Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(right: 10),
                                child: Column(children: [
                                  SizedBox(
                                      height: sizeHelper.draggablesTopPosition),
                                  OptionWidget(3),
                                  SizedBox(height: sizeHelper.freeSpaceScalled),
                                  OptionWidget(4),
                                  SizedBox(height: sizeHelper.freeSpaceScalled),
                                  OptionWidget(5),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //The check button
                      Container(
                          padding: EdgeInsets.only(
                              bottom: sizeHelper.checkBtnBottomPadding),
                          child: CheckButton()),
                    ]));
              })),
    );
  }
}
