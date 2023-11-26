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
            width: AppDimen.wInfinit,
            margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: LayoutBuilder(
              builder: (context, constraint) {
                return GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: (constraint.maxWidth <= 1200) ? 2 : 3,
                  crossAxisSpacing: 60,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.86,
                  primary: false,
                  children: [
                    ...SpaceModel.listSpaces
                        .map((space) => SpaceCardWeb(space: space)),
                  ],
                );
              },
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth <= 1100) {
          return mobileView();
        } else {
          return webView();
        }
      },
    );
  }
}
