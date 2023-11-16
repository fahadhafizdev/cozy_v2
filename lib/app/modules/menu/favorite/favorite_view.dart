import 'package:cozy_v2/app/modules/menu/favorite/components/favorite_header.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          FavoriteHeader(),
        ],
      ),
    );
  }
}
