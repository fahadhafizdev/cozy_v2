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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(builder: (context, constraint) {
            if (constraint.maxWidth <= 700) {
              return const SizedBox.shrink();
            } else {
              return GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(12, 7, 12, 12),
                  child: Center(child: Icon(Icons.arrow_back_ios)),
                ),
              );
            }
          }),
          Expanded(
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
          ),
        ],
      ),
    );
  }
}
