import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/foodtwo_screen/foodtwo_screen.dart';
import '../presentation/homepage_container_screen/homepage_container_screen.dart';
import '../presentation/login_screen/login_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String foodtwoScreen = '/foodtwo_screen';

  static const String orderfivePage = '/orderfive_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    foodtwoScreen: (context) => FoodtwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LoginScreen()
  };
}
