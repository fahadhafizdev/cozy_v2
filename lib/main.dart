import 'package:cozy_v2/app/config/config.dart';
import 'package:cozy_v2/app/data/models/space_model.dart';
import 'package:cozy_v2/app/modules/main_page/main_page.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/components/space_detail/space_detail.dart';
import 'package:cozy_v2/app/modules/menu/dashboard/dashboard_view.dart';
import 'package:cozy_v2/app/modules/menu/favorite/favorite_view.dart';
import 'package:cozy_v2/app/modules/menu/notification/notification_view.dart';
import 'package:cozy_v2/app/modules/menu/news/news_view.dart';
import 'package:cozy_v2/app/modules/splashscreen/splashscreen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Cozy V2',
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreenView(),
            '/main-page': (context) => const MainPage(),
            '/dashboard-view': (context) => const DashboardView(),
            '/notification-view': (context) => const NotificationView(),
            '/news-view': (context) => const NewsView(),
            '/favorite-view': (context) => const FavoriteView(),
          },
        );
      },
    );
  }
}
