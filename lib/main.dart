import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_game_demo/presentation/util/app_localizations.dart';

import 'infrastructure/datasources/local_database.dart';
import 'presentation/home/home_page.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await importDatabaseIfDoesntExist();
  configureInjection(Environment.prod);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Locale locale = await AppLocalizations.getPrefferedLocale();
  runApp(MyApp(locale));
}

class MyApp extends StatelessWidget {
  final Locale locale;
  const MyApp(this.locale, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz game demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(locale),
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        enUS,
        plPL,
      ],
      localizationsDelegates: [
        // A class which loads the translations from JSON files
        AppLocalizationsDelegate(locale),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        return this.locale;
      },
    );
  }
}
