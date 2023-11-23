import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/city_model.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class CityCard extends StatelessWidget {
  final CityModel city;

  const CityCard(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        MotionToast.success(
          title: Text(
            city.name.toTitleCase(),
            style: AppFont.blackTextStyle.copyWith(
              fontWeight: AppFont.semiBold,
            ),
          ),
          description: Text(city.desc, maxLines: 3),
          position: MotionToastPosition.top,
          toastDuration: const Duration(seconds: 1),
        ).show(context);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: IntrinsicHeight(
            child: Container(
              color: AppColor.grey3,
              width: 120,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        city.imageUrl,
                        width: 120,
                        height: 102,
                        fit: BoxFit.cover,
                      ),
                      city.isPopular
                          ? Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: AppColor.mainColor,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                  ),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    ImageString.iconStar,
                                    width: 18,
                                    height: 18,
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  11.0.height,
                  Text(
                    city.name.toTitleCase(),
                    style: AppFont.blackTextStyle.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
