import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ComingSoonPage extends StatelessWidget {
  final String imageUrl;
  const ComingSoonPage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Widget mobileView() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageUrl,
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

    Widget webView() {
      return Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageUrl,
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
            ),
            CustomButton(
              isLoading: false,
              func: () => Navigator.pop(context),
              text: 'Kembali',
              btnStyle: AppButtonStyle.btnMain,
              margin: const EdgeInsets.only(top: 24),
              width: 300,
            ),
          ],
        ),
      ));
    }

    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth >= 700) {
          return webView();
        } else {
          return mobileView();
        }
      },
    );
  }
}
