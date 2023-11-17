import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/notification_model.dart';
import 'package:cozy_v2/app/modules/menu/notification/components/notification_card.dart';
import 'package:cozy_v2/app/modules/menu/notification/components/notification_header.dart';
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
            ...NotificationModel.listNotif.map(
              (notif) => NotificationCard(notif: notif),
            ),
            100.0.height,
          ],
        ),
      ),
    );
  }
}
