import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';

class EmptyOptionWidget extends StatelessWidget {
  const EmptyOptionWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeHelper.optionWidth,
      height: sizeHelper.optionHeight,
      decoration: BoxDecoration(
          color: WHITE_GREY_COLOR,
          border: Border.all(
            color: DARK_PINK_COLOR,
            width: sizeHelper.borderSize,
          ),
          borderRadius: BorderRadius.circular(100)),
    );
  }
}
