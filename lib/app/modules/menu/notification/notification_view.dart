import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/modules/menu/notification/components/notification_header.dart';
import 'package:cozy_v2/app/widgets/coming_soon_page.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NotificationHeader(),
            // ...SpaceModel.listSpaces.map(
            //   (space) => SpaceCardMobile(space: space, isFavorite: true),
            // ),
            100.0.height,
          ],
        ),
      ),
    );
  }
}
