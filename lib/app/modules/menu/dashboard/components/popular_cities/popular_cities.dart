import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/city_model.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/popular_cities/city_card.dart';
import 'package:flutter/material.dart';

class PopularCities extends StatelessWidget {
  const PopularCities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 0, 16),
          child: Text(
            'Popular Cities',
            style: AppFont.blackTextStyle.copyWith(fontSize: 16.sp),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 24),
          width: AppDimen.wInfinit,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...CityModel.listCity.map(
                  (data) => CityCard(data),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
