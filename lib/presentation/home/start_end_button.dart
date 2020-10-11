import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';
import 'package:quiz_game_demo/presentation/util/navigator.dart';

class StartEndButton extends StatelessWidget {
  final bool isStart;
  const StartEndButton(this.isStart, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(
          bottom: isStart
              ? sizeHelper.startBtnHeight - 15
              : sizeHelper.startBtnHeight),
      child: FlatButton(
        color: GREEN_COLOR,
        highlightColor: GREEN_COLOR_DARKER,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          navigateToQuizPage(context);
        },
        child: Container(
            alignment: Alignment.center,
            width: sizeHelper.startBtnWidth,
            height: sizeHelper.startBtnHeight,
            padding:
                EdgeInsets.symmetric(vertical: sizeHelper.startBtnTextPadding),
            child: AutoSizeText(
              AppLocalizations.translate(isStart ? 'start' : 'play_again'),
              style: TextStyle(color: Colors.white, fontSize: 50),
            )),
      ),
    );
  }
}
