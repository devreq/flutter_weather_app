import 'package:flutter/material.dart';
import 'package:flutter_weather_app/constants/theme.dart' as app_theme;
import 'package:flutter_weather_app/routes.dart';
import 'package:flutter_weather_app/weather/bloc/weather/city_weather_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CityWeatherBloc>(
          create: (context) => CityWeatherBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: app_theme.theme,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        initialRoute: "/",
      ),
    );
  }
}
