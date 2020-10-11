import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';

class NumeralWidget extends StatelessWidget {
  final int number;
  final double prefferedFontSize;
  final Color color;
  const NumeralWidget(this.number,
      {this.color = Colors.black, this.prefferedFontSize = 50, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //make the strings
    String bigNumberString, smallThString;
    bigNumberString = '$number';
    switch (number) {
      case 1:
        smallThString = 'st';
        break;
      case 2:
        smallThString = 'nd';
        break;
      case 3:
        smallThString = 'rd';
        break;
      default:
        smallThString = 'th';
    }

    //the widget
    return Stack(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          constraints: BoxConstraints(maxHeight: sizeHelper.bigNumberMaxHeight),
          child: AutoSizeText(
            bigNumberString,
            style: TextStyle(
                color: color,
                fontSize: prefferedFontSize,
                fontFamily: 'arial',
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
            minFontSize: 14,
            maxFontSize: prefferedFontSize,
            maxLines: 1,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: sizeHelper.smallNumberMaxHeight - 0.5,
            ),
            Container(
              alignment: Alignment.topRight,
              constraints: BoxConstraints(
                maxHeight: sizeHelper.smallNumberMaxHeight,
              ),
              child: AutoSizeText(
                smallThString,
                style: TextStyle(
                    color: color,
                    fontSize: prefferedFontSize / 2.5,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
                minFontSize: 8,
                maxFontSize: prefferedFontSize / 2.5,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
