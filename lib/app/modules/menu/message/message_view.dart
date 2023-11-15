import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          ImageString.iconMessage,
          color: AppColor.grey1,
        ),
        24.0.height,
        Text(
          'Message Page is Coming Soon',
          style: AppFont.blackTextStyle.copyWith(
            fontWeight: AppFont.semiBold,
            fontSize: 16.sp,
          ),
        )
      ],
    );
  }
}
