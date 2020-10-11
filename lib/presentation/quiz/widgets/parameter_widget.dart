import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';

class ParameterWidget extends StatelessWidget {
  final String text;
  const ParameterWidget(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeHelper.paramWidth,
      height: sizeHelper.paramHeight,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: sizeHelper.borderSize,
            color: LIGHT_PURPLE_BLUE_COLOR,
          ),
          borderRadius: BorderRadius.circular(50)),
      child: RotatedBox(
        quarterTurns: 3,
        //Alignment container (positioning the widget)
        child: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.symmetric(horizontal: 3),
          //Text holding container
          child: Container(
            width: sizeHelper.paramsTextMaxHeight,
            constraints:
                BoxConstraints(maxHeight: sizeHelper.paramsTextMaxTextHeight),
            child: AutoSizeText(
              text,
              group: paramsASG,
              style: TextStyle(
                  fontFamily: 'arial',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 50),
              minFontSize: 8,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
        ),
      ),
    );
  }
}
