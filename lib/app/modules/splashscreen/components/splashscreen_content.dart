import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.0.height,
            Image.asset(
              ImageString.iconCozy,
              height: 50,
              width: 50,
            ),
            30.0.height,
            Text(
              'Find Cozy House\nto Stay and Happy',
              style: AppFont.blackTextStyle.copyWith(fontSize: 24.sp),
            ),
            10.0.height,
            Text(
              'Stop membuang banyak waktu\npada tempat yang tidak habitable',
              style: AppFont.greyTextStyle,
            ),
            CustomButton(
              width: 150.w,
              margin: const EdgeInsets.only(top: 40),
              isLoading: false,
              func: () {},
              text: 'Explore Now',
              btnStyle: AppButtonStyle.btnMain,
              fontWeight: AppFont.medium,
            ),
          ],
        ),
      ),
    );
  }
}
