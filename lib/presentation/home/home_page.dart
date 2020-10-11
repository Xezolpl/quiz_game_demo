import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:quiz_game_demo/core/constants/colors.dart';
import 'package:quiz_game_demo/core/constants/consts.dart';
import 'package:quiz_game_demo/core/constants/sizes.dart';
import 'package:quiz_game_demo/main.dart';
import 'package:quiz_game_demo/presentation/home/start_end_button.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';

class HomePage extends StatelessWidget {
  final Locale locale;
  const HomePage(this.locale, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //IMPORTANT!!! DO NOT TOUTCH THIS! (sizeHelper initialization)
    sizeHelper = SizeHelper(context);

    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background/home_bg.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              color: MEDIUM_GREY_COLOR,
            ),
            child: Stack(
              children: [
                //Flag widget
                SafeArea(
                  child: Container(
                    padding: EdgeInsets.all(
                      sizeHelper.langFlagIconSize / 3,
                    ),
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () async {
                        //Changing the application's language
                        if (locale == plPL) {
                          await AppLocalizations.load(enUS);
                          runApp(MyApp(enUS));
                        } else {
                          await AppLocalizations.load(plPL);
                          runApp(MyApp(plPL));
                        }
                      },
                      child: Image.asset(
                        locale == plPL
                            ? 'icons/flags/png/pl.png'
                            : 'icons/flags/png/us.png',
                        package: 'country_icons',
                        width: sizeHelper.langFlagIconSize,
                      ),
                    ),
                  ),
                ),
                //Positioned app mechanic description widget
                Column(children: [
                  Expanded(flex: 1, child: Container()),
                  Container(
                    height: sizeHelper.startPageTextMaxHeight,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                    color: BLACK_HALF_OPACITY_COLOR,
                    child: Center(
                      child: AutoSizeText(
                        //text has one html symbol (like &xxxx;)
                        HtmlUnescape().convert(
                            AppLocalizations.translate('app_mechanic_desc')),
                        style: TextStyle(
                            wordSpacing: 2,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'arial',
                            fontSize: 50,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(flex: 3, child: Container()),
                ]),
                //Start button
                StartEndButton(true),
                //My signature :)
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "App made by Mateusz 'XezolPL' Pietras",
                    style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.none,
                        color: Color.fromRGBO(243, 245, 255, 0.6)),
                  ),
                )
              ],
            )));
  }
}
