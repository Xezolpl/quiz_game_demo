import 'package:flutter/material.dart';
import 'package:quiz_game_demo/presentation/end/end_page.dart';
import 'package:quiz_game_demo/presentation/quiz/quiz_page.dart';

_pushWidgetWithFade(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    PageRouteBuilder(
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: widget,
      );
    }, pageBuilder: (BuildContext context, Animation animation,
            Animation secondaryAnimation) {
      return FadeTransition(
        opacity: animation,
        child: widget,
      );
    }),
  );
}

navigateToQuizPage(BuildContext context) {
  _pushWidgetWithFade(context, QuizPage());
}

navigateToEndPage(BuildContext context) {
  _pushWidgetWithFade(context, EndPage());
}
