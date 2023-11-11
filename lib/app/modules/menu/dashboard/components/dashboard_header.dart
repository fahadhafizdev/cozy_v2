import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Widget mobileView() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(24, 40, 0, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Now',
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

    Widget webView() {
      return Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100),
          child: Stack(
            children: [
              // Image.asset(
              //   ImageString.bgHeaderWeb,
              //   fit: BoxFit.cover,
              //   width: AppDimen.wInfinit,
              // ),
              Container(
                height: 600,
                width: AppDimen.wInfinit,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColor.mainColor, AppColor.orange],
                    stops: const [0.25, 0.75],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(100),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 30.h, 0, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        ImageString.iconCozy,
                        height: 72,
                        width: 72,
                      ),
                      7.0.width,
                      Text(
                        'Home',
                        style: AppFont.whiteTextStyle.copyWith(
                          fontSize: 18.sp,
                        ),
                      ),
                      7.0.width,
                      Text(
                        'Message',
                        style: AppFont.whiteTextStyle.copyWith(
                          fontSize: 18.sp,
                        ),
                      ),
                      7.0.width,
                      Text(
                        'News',
                        style: AppFont.whiteTextStyle.copyWith(
                          fontSize: 18.sp,
                        ),
                      ),
                      7.0.width,
                      Text(
                        'Favorite',
                        style: AppFont.whiteTextStyle.copyWith(
                          fontSize: 18.sp,
                        ),
                      ),
                      7.0.width,
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    if (constraint.maxWidth >= 1200) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 80.h, 40, 0),
                        child: Image.asset(
                          ImageString.heroHeader,
                          width: 700,
                        ),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(0, 80.h, 40, 0),
                        child: Image.asset(
                          ImageString.heroHeader,
                          width: 600,
                        ),
                      );
                    }
                  },
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 180.h, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find Cozy House\nto Stay and Happy',
                        style: AppFont.whiteTextStyle.copyWith(fontSize: 35.sp),
                      ),
                      80.0.height,
                      Text(
                        'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                        style: AppFont.whiteTextStyle.copyWith(
                            fontSize: 20.sp,
                            fontWeight: AppFont.light,
                            color: AppColor.white.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 100,
                        child: CustomButton(
                          width: 100.w,
                          margin: const EdgeInsets.only(top: 40),
                          isLoading: false,
                          func: () =>
                              Navigator.pushNamed(context, '/main-page'),
                          text: 'Explore Now',
                          fontSize: 20.sp,
                          btnStyle: AppButtonStyle.btnOrange,
                          fontWeight: AppFont.medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth >= 1100) {
          return webView();
        } else {
          return mobileView();
        }
      },
    );
  }
}
