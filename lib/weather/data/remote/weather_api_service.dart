import 'package:dio/dio.dart';
import 'package:flutter_weather_app/weather/models/weather_response.model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_weather_app/config/services.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: weatherApiUrl)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio, {String baseUrl}) = _WeatherApiService;

  @GET("/current.json")
  Future<HttpResponse<WeatherResponseModel>> getCurrentWeatherForCity(
      {@Query("key") String key,
      @Query("q") String q,
      @Query("aqi") String aqi});
}
