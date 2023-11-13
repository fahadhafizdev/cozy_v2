import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/recommended_space/space_card_mobile.dart';
import 'package:flutter/material.dart';

class RecommendedSpace extends StatelessWidget {
  const RecommendedSpace({super.key});

  Widget mobileView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 0, 16),
          child: Text(
            'Recommended Space',
            style: AppFont.blackTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        ...SpaceModel.listSpaces.map((space) => SpaceCardMobile(space)),
      ],
    );
  }

  Widget webView() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      children: [],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth <= 700) {
          return mobileView();
        } else {
          return SizedBox();
        }
      },
    );
  }
}
