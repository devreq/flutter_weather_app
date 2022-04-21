import 'package:flutter_weather_app/weather/data/remote/weather_api_service.dart';
import 'package:flutter_weather_app/weather/models/weather_response.model.dart';
import 'package:flutter_weather_app/config/services.dart';

class WeatherRepository {
  final WeatherApiService weatherApiService;
  WeatherRepository({required this.weatherApiService});

  Future<WeatherResponseModel> getCurrentWeatherForCity(String city) async {
    final httpResponse = await weatherApiService.getCurrentWeatherForCity(
      key: weatherKey,
      q: city,
      aqi: "no",
    );
    return httpResponse.data;
  }
}
