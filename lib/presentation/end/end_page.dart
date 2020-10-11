import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/presentation/home/start_end_button.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';

class EndPage extends StatelessWidget {
  const EndPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Container(
          decoration: BoxDecoration(
            color: MEDIUM_GREY_COLOR,
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: sizeHelper.startPageTextMaxHeight + 40,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  color: BLACK_HALF_OPACITY_COLOR,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AutoSizeText(
                          AppLocalizations.translate('the_end'),
                          style: TextStyle(
                              wordSpacing: 2,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'arial',
                              fontSize: 46,
                              decoration: TextDecoration.none),
                          textAlign: TextAlign.center,
                        ),
                        AutoSizeText(
                          AppLocalizations.translate('thats_all'),
                          style: TextStyle(
                              wordSpacing: 2,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'arial',
                              fontSize: 28,
                              decoration: TextDecoration.none),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StartEndButton(false),
            ],
          )),
    );
  }
}
