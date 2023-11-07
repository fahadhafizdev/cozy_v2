import 'package:cozy_v2/app/modules/menu/dashboard/components/dashboard_header.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        DashboardHeader(),
      ],
    );
  }
}
