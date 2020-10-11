import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'ordinal_option_description_row.dart';
import 'replay_button.dart';

class ReplayContent extends StatelessWidget {
  final List<QuizOption> options;
  const ReplayContent(this.options, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: sizeHelper.playerHeight,
      color: Colors.black,
      padding: EdgeInsets.only(
          left: sizeHelper.replayContentLeftPadding,
          top: sizeHelper.replayContentTopPadding,
          right: 10,
          bottom: 5),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OrdinalOptionDescriptionRow(
                    1, options[0].name, options[0].description),
                OrdinalOptionDescriptionRow(
                    2, options[1].name, options[1].description),
                OrdinalOptionDescriptionRow(
                    3, options[2].name, options[2].description),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 5),
              child: ReplayButton()),
        ],
      ),
    );
  }
}
