import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:quiz_game_demo/presentation/quiz/options/empty_option.dart';

import 'populated_option.dart';

///Main widget operating with bloc and rebuilt when the data changes
class OptionWidget extends StatelessWidget {
  final int holderNumber;

  OptionWidget(this.holderNumber);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizBloc, QuizState>(
      builder: (context, state) {
        var quizOption = state.currentOptions[holderNumber];
        //If option is empty then return empty widget which is a drag target
        return DragTarget<QuizOption>(
            onAccept: (option) => context
                .bloc<QuizBloc>()
                .add(QuizEvent.optionChanged(holderNumber, option)),
            builder: (context, candidateData, rejectedData) {
              if (quizOption.id == -1) {
                //Its empty quizOption
                return EmptyOptionWidget();
              }
              bool isAlreadySeen =
                  state.alreadySeenOptions.contains(holderNumber);
              Color optionColor = WHITE_GREY_COLOR;

              if (isAlreadySeen) {
                if (state.validOptions.indexOf(quizOption) == holderNumber) {
                  //its valid option - set its color to green
                  optionColor = GREEN_COLOR;
                } else {
                  //its invalid option - set its color to red
                  optionColor = RED_COLOR;
                }
              }
              //Return populated and draggable option
              return Draggable<QuizOption>(
                axis: Axis.vertical,
                data: quizOption,
                feedback: PopulatedOptionWidget(
                    quizOption, state.isVideoPlaying,
                    backgroundColor: optionColor),
                child: PopulatedOptionWidget(quizOption, state.isVideoPlaying,
                    backgroundColor: optionColor),
                childWhenDragging: EmptyOptionWidget(),
                //lock draging when bloc says to block it
                maxSimultaneousDrags: state.areOptionsLocked ? 0 : 1,
              );
            });
      },
    );
  }
}
