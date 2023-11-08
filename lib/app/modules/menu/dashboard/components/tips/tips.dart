import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/config/extension/extension.dart';
import 'package:cozy_v2/app/data/models/tips_model.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/tips/tips_card.dart';
import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 12, 0),
          child: Text(
            'Tips & Guidance',
            style: AppFont.blackTextStyle.copyWith(fontSize: 16.sp),
          ),
        ),
        16.0.height,
        ...TipsModel.listTips.map((tips) => TipsCard(tips)),
        // TipsCard(
        //   Tips(
        //       id: 1,
        //       title: 'City Guidelines',
        //       imageUrl: 'assets/images/tips1.png',
        //       updatedAt: '20 Apr'),
        // ),
        // SizedBox(
        //   height: 16,
        // ),
        // TipsCard(
        //   Tips(
        //       id: 2,
        //       title: 'Jakarta Fairship',
        //       imageUrl: 'assets/images/tips2.png',
        //       updatedAt: '11 Desc'),
        // ),
        100.0.height,
      ],
    );
  }
}
