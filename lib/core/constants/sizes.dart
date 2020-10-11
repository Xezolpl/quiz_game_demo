import 'package:flutter/cupertino.dart';

//The sizes of Adobe Xd project
const PROJECT_WIDTH = 360;
const PROJECT_HEIGHT = 760;

const MIN_TABLET_WIDTH = 600;

///Class created for optimizing the widgets sizes on several different screen sizes
///basing on proportions from Adobe Xd project transformed to in-app sizes by
///dividing screen size by Xd project size
class SizeHelper {
  final BuildContext context;
  final Size size;
  //Get the screen size from media query
  SizeHelper(this.context) : size = MediaQuery.of(context).size;

  //YOUTUBE PLAYER
  double get playerHeight {
    if (size.width > MIN_TABLET_WIDTH) {
      return size.height * (235 / PROJECT_HEIGHT);
    }
    return size.width * (9 / 16); //16/9 ratio
  }

  //PARAMETER WIDGET
  double get paramWidth =>
      size.width * (30 / PROJECT_WIDTH) -
      ((size.width > MIN_TABLET_WIDTH) ? 10 : 0);
  double get paramHeight => size.height * (423 / PROJECT_HEIGHT);

  //OPTION WIDGET
  double get optionWidth => size.width * (300 / PROJECT_WIDTH);
  double get optionHeight => size.height * (45 / PROJECT_HEIGHT);
  double get optionLeftPadding => size.width * (20 / PROJECT_WIDTH);
  double get optionTextMaxHeight => size.height * (20 / PROJECT_HEIGHT);
  double get optionDescriptionMaxHeight => size.height * (15 / PROJECT_HEIGHT);

  //OPTION PLACEHOLDER WIDGET
  double get optionPlaceholderWidth => size.width * (340 / PROJECT_WIDTH);
  double get optionPlaceholderHeight => optionHeight;
  double get optionPlaceholderLeftPadding => size.width * (10 / PROJECT_WIDTH);

  //CHECK BUTTON
  double get checkBtnWidth => size.height * (100 / PROJECT_WIDTH);
  double get checkBtnHeight => size.height * (48 / PROJECT_HEIGHT);
  double get checkBtnBottomPadding => size.height * (12 / PROJECT_HEIGHT);
  double get checkBtnTextPadding => size.height * (10 / PROJECT_HEIGHT);

  //REPLAY BUTTON
  double get replayBtnWidth => size.width * (150 / PROJECT_WIDTH);
  double get replayBtnHeight => size.height * (38 / PROJECT_HEIGHT);
  double get replayBtnIconSize => size.height * (28 / PROJECT_HEIGHT);
  double get replayBtnTextPadding => size.height * (23 / PROJECT_HEIGHT);

  //HOME PAGE
  double get startBtnWidth => size.width * (240 / PROJECT_WIDTH);
  double get startBtnHeight => size.height * (70 / PROJECT_HEIGHT);
  double get startBtnTextPadding => size.height * (16 / PROJECT_HEIGHT);
  double get langFlagIconSize => size.height * (52 / PROJECT_HEIGHT);

  //REPLAY CONTENT
  double get replayContentLeftPadding => size.width * (25 / PROJECT_WIDTH);
  double get replayContentTopPadding => size.height * (33 / PROJECT_HEIGHT);
  double get replayContentRowMaxHeight => size.height * (28 / PROJECT_HEIGHT);

  //BORDER
  double get borderSize => size.height * (3.5 / PROJECT_HEIGHT);

  //POSITIONS
  double get draggablesTopPosition => size.height * (270 / PROJECT_HEIGHT);

  //MAX HEIGHTS (used mainly to block AutoSizeText from getting too big fontSizes)
  double get paramsTextMaxHeight => size.height * (85 / PROJECT_HEIGHT);
  double get paramsTextMaxTextHeight => size.height * (15 / PROJECT_HEIGHT);
  double get bigNumberMaxHeight => size.height * (34 / PROJECT_HEIGHT);
  double get smallNumberMaxHeight => size.height * (16 / PROJECT_HEIGHT);
  double get startPageTextMaxHeight => size.height * (235 / PROJECT_HEIGHT);
  double get paramValueRowMaxHeight => size.height * (32 / PROJECT_HEIGHT);

  //PADDINGS
  double get quizTopPadding {
    if (size.height > PROJECT_HEIGHT) {
      return size.height * (15 / PROJECT_HEIGHT);
    }
    return size.height * (5 / PROJECT_HEIGHT);
  }

  double get freeSpaceScalled => size.height * (5 / PROJECT_HEIGHT);
  double get paramValueRowPadding => size.height * (3 / PROJECT_HEIGHT);

  //PARAMS DIALOG (was too small on the tablets)
  double get paramsDialogWidth {
    var x = size.width * 0.65;
    if (size.aspectRatio > 0.5 && size.width < MIN_TABLET_WIDTH)
      x = size.width * 0.85;
    return x > 300 ? x : 300;
  }

  double get paramsDialogHeight {
    var x = size.height * 0.88;
    return x > 550 ? x : 550;
  }

  double get paramsDialogTextMaxHeight => size.height * (50 / PROJECT_HEIGHT);
  double get paramsDialogCloseBtnHeight => size.height * (50 / PROJECT_HEIGHT);

  double get paramsDialogVerticalPadding => size.height * (15 / PROJECT_HEIGHT);
  double get paramsDialogHorizontalPadding =>
      size.height * (25 / PROJECT_HEIGHT);
}
