import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/recommended_space/space_card_mobile.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/recommended_space/space_card_web.dart';
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
        ...SpaceModel.listSpaces.map((space) => SpaceCardMobile(space: space)),
      ],
    );
  }

  Widget webView() {
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
        Container(
          height: 500,
          width: AppDimen.wInfinit,
          margin: const EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 16),
            children: [
              ...SpaceModel.listSpaces
                  .map((space) => SpaceCardWeb(space: space)),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth <= 700) {
          return mobileView();
        } else {
          return webView();
        }
      },
    );
  }
}
