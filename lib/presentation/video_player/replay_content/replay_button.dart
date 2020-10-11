import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/sizes.dart';
import 'package:quiz_game_demo/presentation/bloc/quiz/quiz_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';

class ReplayButton extends StatelessWidget {
  const ReplayButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHelper = SizeHelper(context);
    return Container(
      alignment: Alignment.center,
      width: sizeHelper.replayBtnWidth,
      height: sizeHelper.replayBtnHeight,
      child: FlatButton(
        color: PINK_COLOR,
        highlightColor: PINK_COLOR_DARKER,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {
          context.bloc<QuizBloc>().add(QuizEvent.replayClicked());
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              constraints:
                  BoxConstraints(maxHeight: sizeHelper.replayBtnTextPadding),
              child: AutoSizeText(
                AppLocalizations.translate('replay'),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.none,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'arial'),
                minFontSize: 16,
                maxFontSize: 30,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Center(
              child: Icon(
                Icons.refresh,
                size: sizeHelper.replayBtnIconSize,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
