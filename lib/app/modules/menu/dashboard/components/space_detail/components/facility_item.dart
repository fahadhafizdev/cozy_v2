import 'package:cozy_v2/app/config/config.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  const FacilityItem(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        8.0.height,
        Text.rich(
          TextSpan(
              text: '$total',
              style: AppFont.purpleTextStyle.copyWith(
                fontSize: 14.sp,
              ),
              children: [
                TextSpan(
                  text: ' $name',
                  style: AppFont.greyTextStyle.copyWith(
                    fontSize: 14.sp,
                  ),
                )
              ]),
        )
      ],
    );
  }
}
