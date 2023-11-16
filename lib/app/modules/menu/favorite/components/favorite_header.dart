import 'package:cozy_v2/app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 40, 0, 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'List Favorite',
            style: AppFont.blackTextStyle.copyWith(fontSize: 24.sp),
          ),
          2.0.height,
          Text(
            'Mencari kosan yang cozy',
            style: AppFont.greyTextStyle.copyWith(fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}
