import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/theme.dart' as app_theme;
import 'package:flutter_weather_app/weather/pages/cities/list.page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: app_theme.theme,
        home: const CityListPage());
  }
}
