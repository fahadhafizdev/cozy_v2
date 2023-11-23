import 'package:cozy_v2/app/config/config.dart';
import 'package:flutter/material.dart';

class TileNavigationWeb extends StatelessWidget {
  final String title;
  const TileNavigationWeb({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (title == 'dashboard') return;
        Navigator.pushNamed(context, '/$title-view');
      },
      child: Text(
        title.toTitleCase(),
        style: AppFont.whiteTextStyle.copyWith(
          fontSize: 18,
        ),
      ),
    );
  }
}
