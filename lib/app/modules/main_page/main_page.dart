import 'package:cozy_v2/app/config/config.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    int pageNumber = 0;

    Widget bottomItem({required String imageUrl, required int index}) {
      return GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              width: 26,
              height: 26,
              color:
                  (index == pageNumber) ? AppColor.mainColor : AppColor.grey1,
            ),
            const Spacer(),
            (index == pageNumber)
                ? Container(
                    width: 30,
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
          return const SizedBox();
        case 1:
          return const SizedBox();
        case 3:
          return const SizedBox();
        case 4:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    Widget customNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 65,
          width: AppDimen.wInfinit,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(23),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              bottomItem(
                imageUrl: 'assets/images/icon_home.png',
                index: 0,
              ),
              bottomItem(
                imageUrl: 'assets/images/icon_mail.png',
                index: 1,
              ),
              bottomItem(
                imageUrl: 'assets/images/icon_card.png',
                index: 2,
              ),
              bottomItem(
                imageUrl: 'assets/images/icon_love.png',
                index: 3,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          buildContent(pageNumber),
          customNavigation(),
        ],
      ),
    );
  }
}
