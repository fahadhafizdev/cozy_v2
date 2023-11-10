import 'dart:ui';

import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/modules/splashscreen/components/splashscreen_content.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget housePicture() {
      return LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth <= 700) {
            return Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                ImageString.house,
                height: 433.h,
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
    }

    Widget blurFilter() {
      return Positioned.fill(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 20),
          child: const SizedBox.expand(),
        ),
      );
    }

    Widget riveShape() {
      return SizedBox(
        width: AppDimen.wInfinit,
        child: RiveAnimation.asset(ImageString.riveShape, fit: BoxFit.cover),
      );
    }

    Widget orangeBox() {
      return LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth <= 700) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100.h,
                width: AppDimen.wInfinit,
                color: AppColor.orange.withOpacity(0.5),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          orangeBox(),
          riveShape(),
          blurFilter(),
          const SplashScreenContent(),
          housePicture()
        ],
      ),
    );
  }
}
