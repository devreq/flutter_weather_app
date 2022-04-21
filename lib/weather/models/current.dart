class Condition {
  final String condition;
  final String text;
  final String icon;
  final int code;

  Condition(
      {required this.condition,
      required this.text,
      required this.icon,
      required this.code});
}

class Current {
  final int last_updated_epoch;
  final String last_updated;
  final double temp_c;
  final double temp_f;
  final int is_day;
  final Condition condition;
  final double wind_mph;
  final double wind_kph;
  final int wind_degree;
  final String wind_dir;
  final double pressure_mb;
  final double pressure_in;
  final double precip_mm;
  final double precip_in;
  final double humidity;
  final int cloud;
  final double feelslike_c;
  final double feelslike_f;
  final double vis_km;
  final double vis_miles;
  final double uv;
  final double gust_mph;
  final double gust_kph;

  Current(
      {required this.last_updated_epoch,
      required this.last_updated,
      required this.temp_c,
      required this.temp_f,
      required this.is_day,
      required this.condition,
      required this.wind_mph,
      required this.wind_kph,
      required this.wind_degree,
      required this.wind_dir,
      required this.pressure_mb,
      required this.pressure_in,
      required this.precip_in,
      required this.precip_mm,
      required this.humidity,
      required this.cloud,
      required this.feelslike_c,
      required this.feelslike_f,
      required this.vis_km,
      required this.vis_miles,
      required this.uv,
      required this.gust_mph,
      required this.gust_kph});
}
