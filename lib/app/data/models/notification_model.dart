import 'package:cozy_v2/app/data/src/image_string.dart';

class NotificationModel {
  final String? title;
  final String? desc;
  final String? imageUrl;
  final String? updatedAt;

  const NotificationModel(
      {required this.title,
      required this.desc,
      required this.imageUrl,
      required this.updatedAt});

  static List<NotificationModel> listNotif = [
    NotificationModel(
      title: 'Super Offer',
      desc: 'Get 60% off in our first booking',
      imageUrl: ImageString.photo1,
      updatedAt: 'Sun,12:40pm',
    ),
    NotificationModel(
      title: '11.11 Offer',
      desc: 'Get 90% off in our first booking',
      imageUrl: ImageString.photo2,
      updatedAt: 'Mon,11:40pm',
    ),
    NotificationModel(
      title: 'Offer PayLatter',
      desc: 'Get free register paylatter',
      imageUrl: ImageString.photo3,
      updatedAt: 'Sat,10:40pm',
    ),
    NotificationModel(
      title: 'Super Offer',
      desc: 'Get 60% off in our first booking',
      imageUrl: ImageString.photo4,
      updatedAt: 'Sun,12:40pm',
    ),
    NotificationModel(
      title: 'Super Offer',
      desc: 'Get 60% off in our first booking',
      imageUrl: ImageString.photo1,
      updatedAt: 'Sun,12:40pm',
    ),
    NotificationModel(
      title: '11.11 Offer',
      desc: 'Get 90% off in our first booking',
      imageUrl: ImageString.photo2,
      updatedAt: 'Mon,11:40pm',
    ),
    NotificationModel(
      title: 'Offer PayLatter',
      desc: 'Get free register paylatter',
      imageUrl: ImageString.photo3,
      updatedAt: 'Sat,10:40pm',
    ),
    NotificationModel(
      title: 'Super Offer',
      desc: 'Get 60% off in our first booking',
      imageUrl: ImageString.photo4,
      updatedAt: 'Sun,12:40pm',
    ),
  ];
}
