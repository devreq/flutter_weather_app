class CityWeatherModel {
  final String name;
  final String condition;
  final String icon;
  final double temp;

  CityWeatherModel(
      {required this.name,
      required this.temp,
      required this.condition,
      required this.icon});
}
