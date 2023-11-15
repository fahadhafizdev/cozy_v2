import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoritWidget extends StatefulWidget {
  const FavoritWidget({super.key});

  @override
  State<FavoritWidget> createState() => _FavoritWidgetState();
}

class _FavoritWidgetState extends State<FavoritWidget> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFavorited = !_isFavorited;
        });
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColor.white,
        ),
        padding: const EdgeInsets.only(top: 2),
        child: Center(
          child: SvgPicture.asset(
            _isFavorited ? ImageString.iconLove : ImageString.iconLoveOutlane,
            color: _isFavorited ? AppColor.red : null,
            width: 20,
            height: 20,
          ),
        ),
      ),
    );
  }
}
