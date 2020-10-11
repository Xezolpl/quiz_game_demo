import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/presentation/quiz/options/option_widget.dart';
import 'package:quiz_game_demo/presentation/quiz/widgets/inside_border_container.dart';
import 'package:quiz_game_demo/presentation/quiz/widgets/numeral_widget.dart';

class OptionHolderWidget extends StatelessWidget {
  final int number;
  final OptionWidget optionWidget;
  const OptionHolderWidget(this.number, this.optionWidget, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InsideBorderContainer(
      width: sizeHelper.optionPlaceholderWidth,
      height: sizeHelper.optionHeight,
      backgroundColor: Colors.white,
      border: Border.all(
        color: DARK_PINK_COLOR,
        width: sizeHelper.borderSize,
      ),
      borderRadius: BorderRadius.circular(100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: sizeHelper.optionPlaceholderLeftPadding,
                ),
                NumeralWidget(number),
              ],
            ),
          ),
          optionWidget,
        ],
      ),
    );
  }
}
