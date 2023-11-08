import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/recommended_space/space_card.dart';
import 'package:flutter/material.dart';

class RecommendedSpace extends StatelessWidget {
  const RecommendedSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Text(
            'Recommended Space',
            style: AppFont.blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        ...SpaceModel.listSpaces.map((space) => SpaceCard(space)),
      ],
    );
  }
}
