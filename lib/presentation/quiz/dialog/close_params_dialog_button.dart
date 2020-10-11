import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';

class CloseParamsDialogButton extends StatelessWidget {
  const CloseParamsDialogButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: sizeHelper.paramsDialogCloseBtnHeight,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          color: PINK_COLOR,
          highlightColor: PINK_COLOR_DARKER,
          onPressed: () {
            Navigator.of(context).pop();
          },
          padding: EdgeInsets.all(10),
          child: AutoSizeText(
            AppLocalizations.translate('close'),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                fontFamily: 'arial',
                decoration: TextDecoration.none,
                color: Colors.white),
          ),
        ));
  }
}
