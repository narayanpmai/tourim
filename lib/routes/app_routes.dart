import 'package:flutter/material.dart';
import 'package:turismapp/presentation/three_container_screen/three_container_screen.dart';
import 'package:turismapp/presentation/one_screen/one_screen.dart';
import 'package:turismapp/presentation/two_screen/two_screen.dart';
import 'package:turismapp/presentation/four_screen/four_screen.dart';
import 'package:turismapp/presentation/five_screen/five_screen.dart';
import 'package:turismapp/presentation/six_screen/six_screen.dart';
import 'package:turismapp/presentation/seven_screen/seven_screen.dart';
import 'package:turismapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String threePage = '/three_page';

  static const String threeContainerScreen = '/three_container_screen';

  static const String oneScreen = '/one_screen';

  static const String twoScreen = '/two_screen';

  static const String fourScreen = '/four_screen';

  static const String fiveScreen = '/five_screen';

  static const String sixScreen = '/six_screen';

  static const String sevenScreen = '/seven_screen';

  static const String eightPage = '/eight_page';

  static const String ninePage = '/nine_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    threeContainerScreen: (context) => ThreeContainerScreen(),
    oneScreen: (context) => OneScreen(),
    twoScreen: (context) => TwoScreen(),
    fourScreen: (context) => FourScreen(),
    fiveScreen: (context) => FiveScreen(),
    sixScreen: (context) => SixScreen(),
    sevenScreen: (context) => SevenScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
