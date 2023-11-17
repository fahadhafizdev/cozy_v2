import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/src/image_string.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/dashboard_view.dart';
import 'package:cozy_v2/app/modules/menu/favorite/favorite_view.dart';
import 'package:cozy_v2/app/modules/menu/notification/notification_view.dart';
import 'package:cozy_v2/app/modules/menu/news/news_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageNumber = 0;

  void changePage(int newValue) {
    pageNumber = newValue;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget bottomItem({required String imageUrl, required int index}) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => changePage(index),
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset(
              imageUrl,
              width: 20,
              height: 20,
              color:
                  (index == pageNumber) ? AppColor.mainColor : AppColor.grey1,
            ),
            const Spacer(),
            (index == pageNumber)
                ? Container(
                    width: 20,
                    height: 2,
                    decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(100)),
                    ),
                  )
                : Container()
          ],
        ),
      );
    }

    Widget buildContent(int value) {
      switch (value) {
        case 0:
          return const DashboardView();
        case 1:
          return const NotificationView();
        case 2:
          return const FavoriteView();
        case 3:
          return const NewsView();
        default:
          return const SizedBox();
      }
    }

    Widget mobileNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 65,
          width: AppDimen.wInfinit,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: AppColor.grey3,
            borderRadius: const BorderRadius.all(
              Radius.circular(23),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomItem(imageUrl: ImageString.iconHome, index: 0),
              bottomItem(imageUrl: ImageString.iconNotification, index: 1),
              bottomItem(imageUrl: ImageString.iconLove, index: 2),
              bottomItem(imageUrl: ImageString.iconNews, index: 3),
            ],
          ),
        ),
      );
    }

    Widget customNavigation() {
      return LayoutBuilder(builder: (context, constraint) {
        if (constraint.maxWidth <= 700) {
          return mobileNavigation();
        } else {
          return const SizedBox.shrink();
        }
      });
    }

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        children: [
          buildContent(pageNumber),
          customNavigation(),
        ],
      ),
    );
  }
}
