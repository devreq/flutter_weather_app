part of 'city_weather_bloc.dart';

@immutable
abstract class CityWeatherEvent {
  final String name;
  const CityWeatherEvent({required this.name});

  Object get props => {};
}

class GetCityWheather extends CityWeatherEvent {
  const GetCityWheather(String name) : super(name: name);
}
