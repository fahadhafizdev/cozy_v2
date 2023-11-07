import 'package:cozy_v2/app/data/src/image_string.dart';

class CityModel {
  int id;
  String name;
  String imageUrl;
  bool isPopular;

  CityModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isPopular = false,
  });
  static List<CityModel> listCity = [
    CityModel(id: 1, name: 'jakarta', imageUrl: ImageString.city1),
    CityModel(id: 2, name: 'surabaya', imageUrl: ImageString.city2),
    CityModel(id: 3, name: 'bandung', imageUrl: ImageString.city3),
    CityModel(id: 4, name: 'palembang', imageUrl: ImageString.city4),
    CityModel(id: 5, name: 'aceh', imageUrl: ImageString.city5),
    CityModel(id: 6, name: 'bogor', imageUrl: ImageString.city6),
  ];
}
