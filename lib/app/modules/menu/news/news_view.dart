import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImageString.iconNews,
            color: AppColor.grey1,
            width: 80,
            height: 80,
          ),
          24.0.height,
          Text(
            'Coming Soon',
            textAlign: TextAlign.center,
            style: AppFont.blackTextStyle.copyWith(
              fontWeight: AppFont.bold,
              fontSize: 18.sp,
            ),
          ),
          Text(
            'Stay Tuned',
            textAlign: TextAlign.center,
            style: AppFont.blackTextStyle,
          )
        ],
      ),
    );
  }
}
