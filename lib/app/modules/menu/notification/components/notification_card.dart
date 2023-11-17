import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notif;
  const NotificationCard({super.key, required this.notif});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        MotionToast.info(
          title: Text(notif.title ?? ''),
          description: Text(notif.desc ?? ''),
          position: MotionToastPosition.top,
          toastDuration: const Duration(seconds: 1),
        ).show(context);
      },
      child: Container(
        width: AppDimen.wInfinit,
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 18),
        child: IntrinsicHeight(
          child: Stack(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      notif.imageUrl!,
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  14.0.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notif.title ?? '',
                        style: AppFont.blackTextStyle.copyWith(
                          fontWeight: AppFont.semiBold,
                          fontSize: 16.sp,
                        ),
                      ),
                      8.0.height,
                      Text(
                        notif.desc ?? '',
                        style: AppFont.grey2TextStyle,
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  notif.updatedAt ?? '',
                  textAlign: TextAlign.end,
                  style: AppFont.grey2TextStyle.copyWith(fontSize: 12.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
