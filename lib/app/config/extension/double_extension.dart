import 'package:cozy_v2/app/config/config.dart';
import 'package:flutter/material.dart';

extension DoubleExtension on double {
  Widget get width => SizedBox(width: w);

  Widget get height => SizedBox(height: h);

  Widget get heightWeb => SizedBox(width: AppDimen.hMediaquery);
}

extension WidgetExtension on Widget {
  Widget getwidthWeb(double factor) =>
      SizedBox(width: AppDimen.wMediaquery * factor);

  Widget getHeightWeb(double factor) =>
      SizedBox(height: AppDimen.hMediaquery * factor);
}
