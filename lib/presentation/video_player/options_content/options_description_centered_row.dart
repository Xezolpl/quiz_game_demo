import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';

class OptionDescriptionCenteredRow extends StatelessWidget {
  final String optionStr, descriptionStr;
  const OptionDescriptionCenteredRow(this.optionStr, this.descriptionStr,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: sizeHelper.bigNumberMaxHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(optionStr,
              group: optionsContentTextASG,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'arial',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none)),
          SizedBox(
            width: 10,
          ),
          AutoSizeText(descriptionStr,
              group: optionsContentTextASG,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'arial',
                  fontSize: 50,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none)),
        ],
      ),
    );
  }
}
