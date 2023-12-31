import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/space_detail/components/favorit_item.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/space_detail/space_detail.dart';
import 'package:flutter/material.dart';

class SpaceCardMobile extends StatelessWidget {
  final SpaceModel space;
  final bool isFavorite;
  const SpaceCardMobile(
      {super.key, required this.space, this.isFavorite = false});

  @override
  Widget build(BuildContext context) {
    Widget image() {
      return ClipRRect(
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
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget desc() {
      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name.toTitleCase(),
              style: AppFont.blackTextStyle.copyWith(
                fontSize: 18,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            2.0.height,
            Text.rich(
              TextSpan(
                  text: '\$${space.price}',
                  style: AppFont.purpleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: ' / month',
                      style: AppFont.greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ]),
            ),
            16.0.height,
            Text(
              '${space.city}, ${space.country}',
              style: AppFont.greyTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 12, 18),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SpaceDetail(space: space),
            ),
          );
        },
        child: Row(
          children: [
            image(),
            getwidthWeb(0.030),
            desc(),
            // isFavorite ? const Spacer() : const SizedBox.shrink(),
            isFavorite
                ? FavoritWidget(initFavorit: true)
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
