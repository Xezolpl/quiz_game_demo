import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/sizes.dart';
import 'package:quiz_game_demo/presentation/quiz/widgets/numeral_widget.dart';

class OrdinalOptionDescriptionRow extends StatelessWidget {
  final int number;
  final String optionStr, descriptionStr;
  const OrdinalOptionDescriptionRow(
      this.number, this.optionStr, this.descriptionStr,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeHelper = SizeHelper(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        NumeralWidget(
          number,
          color: Colors.white,
        ),
        SizedBox(
          width: 15,
        ),
        ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: sizeHelper.replayContentRowMaxHeight,
            ),
            child: AutoSizeText(optionStr,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'arial',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none))),
        SizedBox(
          width: 15,
        ),
        ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: sizeHelper.replayContentRowMaxHeight,
            ),
            child: AutoSizeText(descriptionStr,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'arial',
                    fontSize: 50,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none))),
      ],
    );
  }
}
