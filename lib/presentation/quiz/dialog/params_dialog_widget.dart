import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/presentation/quiz/dialog/param_value_row.dart';
import 'close_params_dialog_button.dart';

class ParamsDialogWidget extends StatelessWidget {
  final QuizOption quizOption;
  const ParamsDialogWidget(this.quizOption, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        overflow: Overflow.visible,
        alignment: Alignment.topCenter,
        children: <Widget>[
          //Main stylized container
          Container(
            width: sizeHelper.paramsDialogWidth,
            height: sizeHelper.paramsDialogHeight,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(25),
                color: DARK_GREY_COLOR),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Image from stack placeholder
                SizedBox(height: sizeHelper.paramsDialogWidth * (9 / 16)),
                //Option name and description
                Container(
                  constraints: BoxConstraints(
                      maxHeight: sizeHelper.paramsDialogTextMaxHeight),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        quizOption.name,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'arial',
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      AutoSizeText(
                        quizOption.description,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'arial',
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                //Parameters column
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: sizeHelper.paramsDialogHorizontalPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ParamValueRow('param1', '${quizOption.param1}'),
                        ParamValueRow('param2', '${quizOption.param2}'),
                        ParamValueRow('param3', '${quizOption.param3}'),
                        ParamValueRow('param4', '${quizOption.param4}'),
                        ParamValueRow('param5', '${quizOption.param5}'),
                        ParamValueRow('param6', '${quizOption.param6}'),
                        ParamValueRow('param7', '${quizOption.param7}'),
                        ParamValueRow('param8', '${quizOption.param8}'),
                        ParamValueRow('param9', '${quizOption.param9}'),
                      ],
                    ),
                  ),
                ),
                //Close params dialog button
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: sizeHelper.paramsDialogVerticalPadding,
                    horizontal: sizeHelper.paramsDialogHorizontalPadding,
                  ),
                  child: CloseParamsDialogButton(),
                ),
              ],
            ),
          ),
          //Image from the asset, rounded and with border
          Container(
            width: sizeHelper.paramsDialogWidth,
            height: sizeHelper.paramsDialogWidth * (9 / 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 5, color: Colors.white),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/photos/${quizOption.id}.jpg'))),
          ),
        ],
      ),
    );
  }
}
