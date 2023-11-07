import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/city_model.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final CityModel city;

  const CityCard(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          color: AppColor.card,
          height: 150,
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
                city.name,
                style: AppFont.blackTextStyle.copyWith(fontSize: 16.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
