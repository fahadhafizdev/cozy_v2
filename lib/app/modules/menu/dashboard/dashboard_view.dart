import 'package:cozy_v2/app/modules/menu/dashboard/components/dashboard_header.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/recommended_space/recommended_space.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/tips/tips.dart';
import 'package:flutter/material.dart';

import 'components/popular_cities/popular_cities.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          DashboardHeader(),
          PopularCities(),
          RecommendedSpace(),
          Tips(),
        ],
      ),
    );
  }
}
