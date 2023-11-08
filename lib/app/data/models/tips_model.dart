import 'package:cozy_v2/app/data/src/image_string.dart';

class TipsModel {
  int id;
  String title;
  String imageUrl;
  String updatedAt;

  TipsModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.updatedAt,
  });

  static List<TipsModel> listTips = [
    TipsModel(
      id: 1,
      title: 'City Guidelines',
      imageUrl: ImageString.tips1,
      updatedAt: '',
    ),
    TipsModel(
      id: 2,
      title: 'Jakarta Fairship',
      imageUrl: ImageString.tips2,
      updatedAt: '',
    ),
  ];
}
