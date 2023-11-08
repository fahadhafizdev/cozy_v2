import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/tips_model.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final TipsModel tips;
  const TipsCard(this.tips, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 0, 18),
      child: Row(
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
                  fontSize: 18.sp,
                ),
              ),
              Text(
                'Updated ${tips.updatedAt}',
                style: AppFont.greyTextStyle.copyWith(
                  fontSize: 14.sp,
                ),
              )
            ],
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: AppColor.grey1,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
