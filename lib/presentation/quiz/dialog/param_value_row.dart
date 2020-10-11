import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';

class ParamValueRow extends StatelessWidget {
  final String param, value;
  const ParamValueRow(this.param, this.value, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHelper.paramValueRowMaxHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: sizeHelper.borderSize,
          color: Colors.white,
        ),
      ),
      child: Row(
        children: [
          //Parameter
          Expanded(
            child: Container(
              padding: EdgeInsets.all(sizeHelper.paramValueRowPadding),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LIGHT_GREY_COLOR_DARKER,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: AutoSizeText(
                param,
                group: dialogParamsValuesASG,
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'arial',
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
            ),
          ),
          //White vertical divider
          Container(
            width: sizeHelper.borderSize,
            height: sizeHelper.paramValueRowMaxHeight,
            color: Colors.white,
          ),
          //Value
          Expanded(
            child: Container(
              padding: EdgeInsets.all(1.8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: WHITE_GREY_COLOR_DARKER,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(6),
                      topRight: Radius.circular(6))),
              child: AutoSizeText(
                value,
                group: dialogParamsValuesASG,
                maxLines: 1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'arial',
                    decoration: TextDecoration.none,
                    color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
