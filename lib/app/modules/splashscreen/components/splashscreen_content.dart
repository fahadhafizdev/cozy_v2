import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mobileView() {
      return Column(
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
            func: () => Navigator.pushNamed(context, '/main-page'),
            text: 'Explore Now',
            btnStyle: AppButtonStyle.btnMain,
            fontWeight: AppFont.medium,
          ),
        ],
      );
    }

    Widget webView() {
      return Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColor.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
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
                style: AppFont.grey2TextStyle,
              ),
              CustomButton(
                width: 100.w,
                margin: const EdgeInsets.only(top: 40),
                isLoading: false,
                func: () => Navigator.pushNamed(context, '/main-page'),
                text: 'Explore Now',
                btnStyle: AppButtonStyle.btnMain,
                fontWeight: AppFont.medium,
              ),
            ],
          ),
        ),
      );
    }

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: LayoutBuilder(
          builder: (context, constraint) {
            if (constraint.maxWidth <= 700) {
              return mobileView();
            } else {
              return webView();
            }
          },
        ),
      ),
    );
  }
}
