import 'package:cozy_v2/app/data/src/image_string.dart';

class CityModel {
  int id;
  String name;
  String imageUrl;
  bool isPopular;
  String desc;

  CityModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.desc,
    this.isPopular = false,
  });
  static List<CityModel> listCity = [
    CityModel(
      id: 1,
      name: 'jakarta',
      imageUrl: ImageString.city1,
      desc:
          'Jakarta, the vibrant capital of Indonesia, is a bustling metropolis that encapsulates a blend of rich history, diverse cultures, and a dynamic urban landscape',
    ),
    CityModel(
      id: 2,
      name: 'surabaya',
      imageUrl: ImageString.city2,
      desc:
          'Surabaya, the City of Heroes, stands proudly as Indonesia\'s second-largest city and a thriving hub on the eastern side of Java.',
    ),
    CityModel(
      id: 3,
      name: 'bandung',
      imageUrl: ImageString.city3,
      desc:
          'Bandung, often hailed as the "Paris of Java," is a charming city nestled amidst the lush highlands of West Java, Indonesia. ',
    ),
    CityModel(
      id: 4,
      name: 'palembang',
      imageUrl: ImageString.city4,
      desc:
          'Palembang, the capital of South Sumatra in Indonesia, is a city steeped in history, cultural richness, and a unique blend of modernity and tradition.',
    ),
    CityModel(
      id: 5,
      name: 'aceh',
      imageUrl: ImageString.city5,
      desc:
          'Aceh, located on the northern tip of Sumatra in Indonesia, is a city that carries a profound historical and cultural significance.',
    ),
    CityModel(
      id: 6,
      name: 'bogor',
      imageUrl: ImageString.city6,
      desc:
          'Bogor, a picturesque city nestled amid the lush greenery and misty hills of West Java, Indonesia, offers a tranquil escape from bustling urban life.',
    ),
  ];
}
