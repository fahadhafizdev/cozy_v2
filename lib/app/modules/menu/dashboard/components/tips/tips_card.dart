import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/config/extension/extension.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
          height: 80,
        ),
        16.0.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: AppFont.blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            Text(
              'Updated ${tips.updatedAt}',
              style: lightTextStyle.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ),
        Spacer(),
        IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: greyColor,
            ),
            onPressed: () {})
      ],
    );
  }
}
