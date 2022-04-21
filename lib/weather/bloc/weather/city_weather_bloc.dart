import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'city_weather_event.dart';
part 'city_weather_state.dart';

class CityWeatherBloc extends Bloc<CityWeatherEvent, CityWeatherState> {
  CityWeatherBloc() : super(CityWeatherInitial());

  Stream<CityWeatherState> mapEventToState(CityWeatherEvent event) async* {
    if (event is GetCityWheather) {
      yield* _mapLoadWeatherToState(event.name);
    }
  }

  Stream<CityWeatherState> _mapLoadWeatherToState(String name) async* {}
}
