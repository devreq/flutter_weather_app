class CityModel {
  final int id;
  final String name;
  final String ruLabel;

  CityModel({required this.id, required this.name, required this.ruLabel});

  static List<CityModel> fromJsonList(List<dynamic> json) =>
      json.map((i) => fromJson(i)).toList();

  static CityModel fromJson(Map<String, dynamic> json) {
    return CityModel(
        id: json["id"] as int,
        name: json["name"] as String,
        ruLabel: json["ruLabel"] as String);
  }
}

var data = [
  {
    'id': 1,
    'name': 'krasnodar',
    'ruLabel': 'краснодар',
  },
  {
    'id': 2,
    'name': 'moscow',
    'ruLabel': 'москва',
  },
  {
    'id': 3,
    'name': 'saint-Petersburg',
    'ruLabel': 'санкт-петербург',
  }
];
