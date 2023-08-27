import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/presentation/eight_page/eight_page.dart';
import 'package:turismapp/presentation/nine_page/nine_page.dart';
import 'package:turismapp/presentation/three_page/three_page.dart';
import 'package:turismapp/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ThreeContainerScreen extends StatelessWidget {
  ThreeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.threePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Image11:
        return AppRoutes.threePage;
      case BottomBarEnum.Locationonprimarycontainer:
        return AppRoutes.eightPage;
      case BottomBarEnum.Image9:
        return "/";
      case BottomBarEnum.Favoriteonprimarycontainer:
        return AppRoutes.ninePage;
      case BottomBarEnum.User:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.threePage:
        return ThreePage();
      case AppRoutes.eightPage:
        return EightPage();
      case AppRoutes.ninePage:
        return NinePage();
      default:
        return DefaultWidget();
    }
  }
}
