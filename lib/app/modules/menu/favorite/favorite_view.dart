import 'package:cozy_v2/app/config/extension/extension.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/modules/menu/favorite/components/favorite_header.dart';
import 'package:flutter/material.dart';

import '../dashboard/components/recommended_space/space_card_mobile.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FavoriteHeader(),
            ...SpaceModel.listSpaces.map(
              (space) => SpaceCardMobile(space: space, isFavorite: true),
            ),
            100.0.height,
          ],
        ),
      ),
    );
  }
}
