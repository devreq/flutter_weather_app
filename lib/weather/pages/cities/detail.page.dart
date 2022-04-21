import 'package:flutter/material.dart';
import 'package:flutter_weather_app/weather/pages/cities/widgets/detail_horizontal.dart';
import 'package:flutter_weather_app/weather/pages/cities/widgets/detail_vertical.dart';

class CityDetailPage extends StatelessWidget {
  final String name;
  final String ruLabel;

  const CityDetailPage({Key? key, required this.name, required this.ruLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(
      builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? const DetailVertical()
            : const DetailHorizontal();
      },
    ));
  }
}
