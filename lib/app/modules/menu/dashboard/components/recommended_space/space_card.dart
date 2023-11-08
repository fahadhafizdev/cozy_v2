import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => DetailPage(space),
        //   ),
        // );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    space.imageUrl,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageString.iconStar,
                            width: 14,
                            height: 14,
                          ),
                          5.0.width,
                          Text(
                            '${space.rating}/5',
                            style: AppFont.whiteTextStyle.copyWith(
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          28.0.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: AppFont.blackTextStyle.copyWith(
                  fontSize: 18.sp,
                ),
              ),
              2.0.height,
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
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: AppFont.greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
