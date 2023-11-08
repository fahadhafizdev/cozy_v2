import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;

  const RatingItem({super.key, required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageString.iconStar,
      width: 20,
      color: index <= rating ? null : Color(0xff989BA1),
    );
  }
}
