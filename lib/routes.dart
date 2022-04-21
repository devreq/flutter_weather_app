import 'package:flutter/material.dart';
import 'package:flutter_weather_app/weather/pages/cities/detail.page.dart';
import 'package:flutter_weather_app/weather/pages/cities/list.page.dart';

const String cityListRoute = '/';
const String cityWeatherDetailRoute = '/detailCityWeather';

class SettingsArguments {
  final String name;
  final String ruLabel;
  SettingsArguments({required this.name, required this.ruLabel});
}

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case cityListRoute:
        return _materialRoute(const CityListPage());
      case cityWeatherDetailRoute:
        final arguments = settings.arguments as SettingsArguments;
        return _materialRoute(CityDetailPage(
          name: arguments.name,
          ruLabel: arguments.ruLabel,
        ));
      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
