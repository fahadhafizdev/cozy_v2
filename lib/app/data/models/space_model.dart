import 'package:cozy_v2/app/data/src/image_string.dart';

class SpaceModel {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBadrooms;
  int numberOfCupBoards;

  SpaceModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
    required this.numberOfKitchens,
    required this.numberOfBadrooms,
    required this.numberOfCupBoards,
  });

  static List<SpaceModel> listSpaces = [
    SpaceModel(
      id: 1,
      name: 'kuratakeso hot',
      imageUrl: ImageString.space1,
      price: 52,
      city: 'Bandung',
      country: 'Indonesia',
      rating: 4,
      address: 'Jln. Kappan Sukses No. 20, Bandung',
      phone: '081330648183',
      mapUrl:
          'https://www.google.com/maps/d/u/0/viewer?mid=1pRr96dk8bzZtAoXcOJjjIJXcmjU&hl=en_US&ll=-6.175392999999975%2C106.82702099999997&z=17',
      photos: [ImageString.photo1, ImageString.photo2, ImageString.photo3],
      numberOfKitchens: 4,
      numberOfBadrooms: 2,
      numberOfCupBoards: 3,
    ),
    SpaceModel(
      id: 2,
      name: 'Skyfall Batu',
      imageUrl: ImageString.space2,
      price: 52,
      city: 'Batu',
      country: 'Indonesia',
      rating: 5,
      address: 'Jln. Dau No.30, Kota Batu',
      phone: '081330648183',
      mapUrl:
          'https://www.google.com/maps/d/u/0/viewer?mid=1pRr96dk8bzZtAoXcOJjjIJXcmjU&hl=en_US&ll=-6.175392999999975%2C106.82702099999997&z=17',
      photos: [ImageString.photo1, ImageString.photo2, ImageString.photo3],
      numberOfKitchens: 2,
      numberOfBadrooms: 4,
      numberOfCupBoards: 1,
    ),
    SpaceModel(
      id: 3,
      name: 'Rise Cozy',
      imageUrl: ImageString.space3,
      price: 52,
      city: 'Malang',
      country: 'Indonesia',
      rating: 5,
      address: 'Jln. Tologomas No.44, Kab.Malang',
      phone: '081330648183',
      mapUrl:
          'https://www.google.com/maps/d/u/0/viewer?mid=1pRr96dk8bzZtAoXcOJjjIJXcmjU&hl=en_US&ll=-6.175392999999975%2C106.82702099999997&z=17',
      photos: [ImageString.photo1, ImageString.photo2, ImageString.photo3],
      numberOfKitchens: 2,
      numberOfBadrooms: 1,
      numberOfCupBoards: 4,
    ),
    SpaceModel(
      id: 4,
      name: 'Malang Kota House',
      imageUrl: ImageString.space1,
      price: 30,
      city: 'Malang',
      country: 'Indonesia',
      rating: 5,
      address: 'Jln. bunga mawar No.33, Kota.Malang',
      phone: '081330648183',
      mapUrl:
          'https://www.google.com/maps/d/u/0/viewer?mid=1pRr96dk8bzZtAoXcOJjjIJXcmjU&hl=en_US&ll=-6.175392999999975%2C106.82702099999997&z=17',
      photos: [ImageString.photo1, ImageString.photo2, ImageString.photo3],
      numberOfKitchens: 2,
      numberOfBadrooms: 1,
      numberOfCupBoards: 4,
    ),
    SpaceModel(
      id: 5,
      name: 'Surabaya Stay House',
      imageUrl: ImageString.space1,
      price: 66,
      city: 'Surabaya',
      country: 'Indonesia',
      rating: 5,
      address: 'Jln. kamboja No.33, Kota.Surabaya',
      phone: '081330648183',
      mapUrl:
          'https://www.google.com/maps/d/u/0/viewer?mid=1pRr96dk8bzZtAoXcOJjjIJXcmjU&hl=en_US&ll=-6.175392999999975%2C106.82702099999997&z=17',
      photos: [ImageString.photo1, ImageString.photo2, ImageString.photo3],
      numberOfKitchens: 2,
      numberOfBadrooms: 1,
      numberOfCupBoards: 4,
    ),
    SpaceModel(
      id: 5,
      name: 'Kos Patenilir II Palembang',
      imageUrl: ImageString.space1,
      price: 33,
      city: 'Palembang',
      country: 'Indonesia',
      rating: 5,
      address: 'Jln. apel No.23, Kota.Palembang',
      phone: '081330648183',
      mapUrl:
          'https://www.google.com/maps/d/u/0/viewer?mid=1pRr96dk8bzZtAoXcOJjjIJXcmjU&hl=en_US&ll=-6.175392999999975%2C106.82702099999997&z=17',
      photos: [ImageString.photo1, ImageString.photo2, ImageString.photo3],
      numberOfKitchens: 2,
      numberOfBadrooms: 1,
      numberOfCupBoards: 4,
    ),
  ];
}
