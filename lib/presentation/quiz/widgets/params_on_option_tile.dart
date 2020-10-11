import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';

class ParamsOnOptionTile extends StatelessWidget {
  final String text;
  const ParamsOnOptionTile(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 0.5, vertical: sizeHelper.paramWidth / 3),
      width: sizeHelper.paramWidth,
      height: sizeHelper.optionHeight,
      color: DARK_PURPLE_BLUE_COLOR,
      child: Center(
        child: AutoSizeText(
          text,
          group: optionsParamsASG,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
            fontSize: 50,
            fontFamily: 'arial',
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
