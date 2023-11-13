import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SpaceCardWeb extends StatelessWidget {
  final SpaceModel space;
  const SpaceCardWeb({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColor.grey1.withOpacity(0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              space.imageUrl,
              width: AppDimen.wInfinit,
              height: 239,
              fit: BoxFit.cover,
            ),
          ),
          13.0.height,
          Text(
            space.name,
            style: AppFont.blackTextStyle.copyWith(
              fontWeight: AppFont.medium,
              fontSize: 24.sp,
            ),
          ),
          2.0.height,
          Text(
            '${space.city}, ${space.country}',
            style: AppFont.greyTextStyle.copyWith(
              fontSize: 14,
            ),
          ),
          11.0.height,
          Text.rich(
            TextSpan(
                text: '\$${space.price}',
                style: AppFont.purpleTextStyle.copyWith(
                  fontSize: 16.sp,
                ),
                children: [
                  TextSpan(
                    text: ' / month',
                    style: AppFont.greyTextStyle.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                ]),
          ),
          18.0.height,
          SizedBox(
            height: 60,
            child: CustomButton(
              isLoading: false,
              func: () {},
              text: 'Book now',
              fontSize: 16.sp,
              btnStyle: AppButtonStyle.btnMain,
            ),
          )
        ],
      ),
    );
  }
}
