import 'package:cozy_v2/app/config/config.dart';
import 'package:flutter/material.dart';

extension DoubleExtension on double {
  Widget get width => SizedBox(width: w);

  Widget get height => SizedBox(height: h);

  Widget get widthWeb => SizedBox(width: AppDimen.wMediaquery);

  Widget get heightWeb => SizedBox(width: AppDimen.hMediaquery);
}
