import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:flutter/material.dart';

import 'components/facility_item.dart';
import 'components/favorit_item.dart';
import 'components/rating_item.dart';

class SpaceDetail extends StatelessWidget {
  final SpaceModel space;
  const SpaceDetail({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
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
          ListView(
            children: [
              SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      20,
                    ),
                  ),
                  color: AppColor.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE: TITLE
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
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
                          // Row(
                          //   children: [1, 2, 3, 4, 5].map((item) {
                          //     return Container(
                          //       margin: EdgeInsets.only(left: 2),
                          //       child: RatingItem(
                          //         index: item,
                          //         rating: space.rating,
                          //       ),
                          //     );
                          //   }).toList(),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE: MAIN FACILITIES
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        'Main Facilities',
                        style: AppFont.blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: 24),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       FacilityItem(
                    //         name: 'kitchen',
                    //         imageUrl: 'assets/images/icon_kitchen.png',
                    //         total: space.numberOfKitchens,
                    //       ),
                    //       FacilityItem(
                    //         name: 'bedroom',
                    //         imageUrl: 'assets/images/icon_bedroom.png',
                    //         total: space.numberOfBadrooms,
                    //       ),
                    //       FacilityItem(
                    //         name: 'big lemari',
                    //         imageUrl: 'assets/images/icon_lemari.png',
                    //         total: space.numberOfCupBoards,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE: PHOTOS
                    Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Text(
                        'Photos',
                        style: AppFont.blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 88,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: space.photos.map((item) {
                          return Container(
                            margin: EdgeInsets.only(left: 24),
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
                    SizedBox(
                      height: 30,
                    ),
                    //NOTE:LOCATION
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        'Location',
                        style: AppFont.blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
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
                              SizedBox(
                                height: 2,
                              ),
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
                    SizedBox(
                      height: 40,
                    ),
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
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // InkWell(
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                //   child: Image.asset(
                //     'assets/images/btn_back.png',
                //     width: 40,
                //     height: 40,
                //   ),
                // ),
                // FavoritWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
