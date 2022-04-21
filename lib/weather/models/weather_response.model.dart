import 'package:flutter_weather_app/weather/models/current.dart';
import 'package:flutter_weather_app/weather/models/location.dart';

class WeatherResponseModel {
  final Location location;
  final Current current;

  WeatherResponseModel({
    required this.location,
    required this.current,
  });
}
