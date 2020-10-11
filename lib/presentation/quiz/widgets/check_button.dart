import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';
import 'package:quiz_game_demo/presentation/util/navigator.dart';

class CheckButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        //determine the text and the functions
        String text = AppLocalizations.translate('lets_go');
        Function onClick;
        //DEFAULT - CHECK
        onClick = () {
          if (state.isAbleToCheck) {
            context.bloc<QuizBloc>().add(QuizEvent.checkClicked());
          }
        };
        //IF IS CHECKED THEN NEXT
        if (state.isChecked) {
          text = AppLocalizations.translate('next');
          onClick = () {
            context.bloc<QuizBloc>().add(QuizEvent.nextClicked());
          };
          //IF THAT IS ALL THEN NAVIGATE TO FINISH PAGE
          if (context.bloc<QuizBloc>().availableVideosIds.length == 0) {
            text = AppLocalizations.translate('next');
            onClick = () {
              navigateToEndPage(context);
            };
          }
        }
        //return the widget
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: sizeHelper.checkBtnWidth,
            height: sizeHelper.checkBtnHeight,
            child: FlatButton(
              color: state.isAbleToCheck ? GREEN_COLOR : MEDIUM_GREY_COLOR,
              highlightColor:
                  state.isAbleToCheck ? GREEN_COLOR_DARKER : MEDIUM_GREY_COLOR,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              onPressed: onClick,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    vertical: sizeHelper.checkBtnTextPadding),
                child: AutoSizeText(text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        );
      },
    );
  }
}
