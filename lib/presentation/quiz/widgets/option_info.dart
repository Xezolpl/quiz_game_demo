import 'package:audioplayers/audio_cache.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';

import '../dialog/params_dialog_widget.dart';

class OptionInfoWidget extends StatelessWidget {
  final QuizOption quizOption;
  final bool isVideoPlaying;
  const OptionInfoWidget(this.quizOption, this.isVideoPlaying, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        //Play the car's sound
        if (!isVideoPlaying) {
          try {
            AudioCache().play("sounds/${quizOption.id}.mp3");
          } catch (_) {}
        }
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return ParamsDialogWidget(quizOption);
          },
        );
      },
      child: Container(
        width: sizeHelper.optionHeight,
        height: sizeHelper.optionHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: sizeHelper.borderSize,
              color: DARK_PURPLE_BLUE_COLOR,
            )),
        alignment: Alignment.center,
        child: AutoSizeText(
          'i',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              fontFamily: 'arial',
              decoration: TextDecoration.none,
              color: DARK_PURPLE_BLUE_COLOR),
        ),
      ),
    );
  }
}
