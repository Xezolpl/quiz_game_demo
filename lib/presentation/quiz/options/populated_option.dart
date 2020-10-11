import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/presentation/quiz/widgets/inside_border_container.dart';
import '../widgets/option_info.dart';
import '../widgets/params_on_option_tile.dart';

class PopulatedOptionWidget extends StatelessWidget {
  final QuizOption quizOption;
  final Color backgroundColor;
  final bool isVideoPlaying;

  const PopulatedOptionWidget(this.quizOption, this.isVideoPlaying,
      {Key key, this.backgroundColor = WHITE_GREY_COLOR})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InsideBorderContainer(
      width: sizeHelper.optionWidth,
      height: sizeHelper.optionHeight,
      backgroundColor: backgroundColor,
      border: Border.all(
          width: sizeHelper.borderSize, color: DARK_PURPLE_BLUE_COLOR),
      borderRadius: BorderRadius.circular(100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //1st/2nd/3rd
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                  left: sizeHelper.optionLeftPadding,
                  top: 4,
                  bottom: 4,
                  right: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: sizeHelper.optionTextMaxHeight,
                      ),
                      child: AutoSizeText(
                        quizOption.name,
                        group: optionsTitlesASG,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'arial',
                            decoration: TextDecoration.none,
                            fontSize: 100),
                      )),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: sizeHelper.optionDescriptionMaxHeight,
                    ),
                    child: AutoSizeText(
                      quizOption.description,
                      group: optionsDescsASG,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'arial',
                          decoration: TextDecoration.none,
                          fontSize: 50),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Params tiles
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ParamsOnOptionTile('${quizOption.param1}'),
              SizedBox(
                width: sizeHelper.freeSpaceScalled,
              ),
              ParamsOnOptionTile('${quizOption.param2}'),
              SizedBox(
                width: sizeHelper.freeSpaceScalled,
              ),
              ParamsOnOptionTile('${quizOption.param3}'),
              SizedBox(
                width: sizeHelper.freeSpaceScalled,
              ),
              ParamsOnOptionTile('${quizOption.param4}'),
            ],
          ),
          SizedBox(
            width: 5,
          ),
          //Info widget to the params dialog
          OptionInfoWidget(quizOption, isVideoPlaying),
        ],
      ),
    );
  }
}
