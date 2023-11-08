import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:flutter/material.dart';

import 'components/facility_item.dart';
import 'components/favorit_item.dart';
import 'components/rating_item.dart';

class SpaceDetail extends StatelessWidget {
  final SpaceModel space;
  const SpaceDetail({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    Widget headerButton() {
      return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColor.white,
                ),
                padding: const EdgeInsets.only(left: 8),
                child: const Center(child: Icon(Icons.arrow_back_ios)),
              ),
            ),
            const FavoritWidget(),
          ],
        ),
      );
    }

    Widget headerCard() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  space.name,
                  style: AppFont.blackTextStyle.copyWith(
                    fontSize: 22,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: '\$${space.price} ',
                    style: AppFont.purpleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: '/ month',
                        style: AppFont.greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [1, 2, 3, 4, 5].map((item) {
                return Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: RatingItem(
                    index: item,
                    rating: space.rating,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
    }

    Widget mainFacility() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Main Facilities',
              style: AppFont.blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          12.0.height,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FacilityItem(
                  name: 'kitchen',
                  imageUrl: ImageString.iconKitchen,
                  total: space.numberOfKitchens,
                ),
                FacilityItem(
                  name: 'bedroom',
                  imageUrl: ImageString.iconBedroom,
                  total: space.numberOfBadrooms,
                ),
                FacilityItem(
                  name: 'big lemari',
                  imageUrl: ImageString.iconCupboard,
                  total: space.numberOfCupBoards,
                ),
              ],
            ),
          ),
          30.0.height,
        ],
      );
    }

    Widget photoPreview() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24),
            child: Text(
              'Photos',
              style: AppFont.blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          12.0.height,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: space.photos.map((item) {
                return Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      item,
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          30.0.height,
        ],
      );
    }

    Widget content() {
      return SingleChildScrollView(
        child: Column(
          children: [
            328.0.height,
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: AppColor.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.0.height,
                  headerCard(),
                  30.0.height,
                  mainFacility(),
                  photoPreview(),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      'Location',
                      style: AppFont.blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  6.0.height,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              space.address,
                              style: AppFont.greyTextStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            2.0.height,
                            Text(
                              space.city,
                              style: AppFont.greyTextStyle.copyWith(
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     // launchUrl(space.mapUrl);
                        //   },
                        //   child: Image.asset(
                        //     'assets/images/btn_maps.png',
                        //     width: 40,
                        //     height: 40,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  40.0.height,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    height: 50,
                    width: MediaQuery.of(context).size.width - (2 * 24),
                    child: ElevatedButton(
                      style: AppButtonStyle.btnMain,
                      onPressed: () {
                        // _showMyDialog();
                      },
                      child: Text(
                        'Book Now',
                        style: AppFont.whiteTextStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  40.0.height,
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        children: [
          Image.asset(
            space.imageUrl,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          content(),
          headerButton(),
        ],
      ),
    );
  }
}
