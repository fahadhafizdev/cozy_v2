import 'package:cozy_v2/app/config/config.dart';
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
        100.0.height,
      ],
    );
  }
}
