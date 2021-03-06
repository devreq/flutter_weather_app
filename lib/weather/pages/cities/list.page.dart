import 'package:flutter/material.dart';
import 'package:flutter_weather_app/weather/widgets/city_button.dart';

class CityListPage extends StatefulWidget {
  const CityListPage({Key? key}) : super(key: key);

  @override
  State<CityListPage> createState() => _CityListPageState();
}

class _CityListPageState extends State<CityListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding:
          const EdgeInsetsDirectional.only(start: 24.0, end: 24.0, top: 30.0),
      children: [
        CityButton(label: 'Краснодар', onPressed: _onCityPressed(context)),
        CityButton(label: 'Москва', onPressed: _onCityPressed(context)),
        CityButton(label: 'Санкт-Петербург', onPressed: _onCityPressed(context))
      ],
    ));
  }

  _onCityPressed(BuildContext context) {
    Navigator.pushNamed(context, '/detailCityWeather');
  }
}
