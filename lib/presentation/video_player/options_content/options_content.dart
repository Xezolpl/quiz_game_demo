import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';

import 'options_description_centered_row.dart';

class OptionsContent extends StatelessWidget {
  final List<QuizOption> options;
  const OptionsContent(this.options, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: sizeHelper.playerHeight,
      padding: EdgeInsets.only(left: 10, right: 10, top: 35, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OptionDescriptionCenteredRow(options[0].name, options[0].description),
          SmallVersusWidget(),
          OptionDescriptionCenteredRow(options[1].name, options[1].description),
          SmallVersusWidget(),
          OptionDescriptionCenteredRow(options[2].name, options[2].description),
        ],
      ),
    );
  }
}

class SmallVersusWidget extends StatelessWidget {
  const SmallVersusWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: sizeHelper.smallNumberMaxHeight),
      child: AutoSizeText('VS',
          style: TextStyle(
              color: Colors.amber[600],
              fontSize: 30,
              fontFamily: 'arial',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.none)),
    );
  }
}
