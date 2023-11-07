import 'package:flutter/material.dart';
import 'app_color.dart';

class AppButtonStyle {
  static ButtonStyle btnMain = ElevatedButton.styleFrom(
    backgroundColor: AppColor.mainColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(17)),
    ),
  );

  static ButtonStyle btnOrange = ElevatedButton.styleFrom(
    backgroundColor: AppColor.orange,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(17),
      ),
    ),
  );
}
