import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/presentation/eight_page/eight_page.dart';
import 'package:turismapp/presentation/nine_page/nine_page.dart';
import 'package:turismapp/presentation/three_page/three_page.dart';
import 'package:turismapp/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SixScreen extends StatelessWidget {
  SixScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.yellow90099,
            body: SizedBox(
                height: getVerticalSize(727),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: getVerticalSize(448),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle10,
                                height: getVerticalSize(448),
                                width: getHorizontalSize(390),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: getPadding(left: 23),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft,
                                              height: getVerticalSize(6),
                                              width: getHorizontalSize(49),
                                              alignment: Alignment.centerLeft,
                                              onTap: () {
                                                onTapImgArrowleftone(context);
                                              }),
                                          Container(
                                              height: getSize(35),
                                              width: getSize(35),
                                              padding: getPadding(all: 2),
                                              decoration: AppDecoration
                                                  .fillPrimary
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder15),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse19,
                                                  height: getSize(30),
                                                  width: getSize(30),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(15)),
                                                  alignment: Alignment.center)),
                                          Container(
                                              height: getSize(25),
                                              width: getSize(25),
                                              padding: getPadding(all: 1),
                                              decoration: AppDecoration
                                                  .fillPrimary
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder12),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse1922x22,
                                                  height: getSize(22),
                                                  width: getSize(22),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(11)),
                                                  alignment: Alignment.center))
                                        ])))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle20,
                      height: getVerticalSize(174),
                      width: getHorizontalSize(390),
                      alignment: Alignment.bottomCenter,
                      margin: getMargin(bottom: 191)),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          margin: getMargin(left: 21, right: 21, bottom: 5),
                          padding: getPadding(
                              left: 10, top: 8, right: 10, bottom: 8),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle7181x327,
                                    height: getVerticalSize(181),
                                    width: getHorizontalSize(327),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(left: 1)),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 19, right: 2),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("King + Duke",
                                              style: CustomTextStyles
                                                  .titleLargeOnPrimary),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStar114x14,
                                              height: getSize(14),
                                              width: getSize(14),
                                              margin:
                                                  getMargin(top: 2, bottom: 8)),
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 6),
                                              child: Text("4.5",
                                                  style: CustomTextStyles
                                                      .bodySmallGray70001_2))
                                        ])),
                                Container(
                                    width: getHorizontalSize(319),
                                    margin:
                                        getMargin(left: 2, top: 10, right: 6),
                                    child: Text(
                                        "One of EATER National and Atlanta Magazine’s most \nanticipated new openings of 2013.This new restaurant by\n Ford Fry and Rocket Farm, designed by Meyer Davis and NO \nArchitecture, is located at the corner of West Paces Ferry,",
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .labelMediumInterGray70001)),
                                Padding(
                                    padding: getPadding(
                                        left: 4, top: 26, bottom: 10),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse829x29,
                                              height: getSize(29),
                                              width: getSize(29),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(14))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4, top: 9, bottom: 5),
                                              child: Text("Miley Erikson",
                                                  style: CustomTextStyles
                                                      .labelMediumPrimarySemiBold)),
                                          Container(
                                              height: getSize(6),
                                              width: getSize(6),
                                              margin: getMargin(
                                                  left: 6, top: 14, bottom: 9),
                                              decoration: BoxDecoration(
                                                  color: appTheme.gray70001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              3)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 5, top: 9, bottom: 5),
                                              child: Text("2 weeks ago",
                                                  style: CustomTextStyles
                                                      .bodySmallMontserratGray70001))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: getPadding(left: 63),
                          child: SizedBox(
                              height: getVerticalSize(329),
                              child: VerticalDivider(
                                  width: getHorizontalSize(3),
                                  thickness: getVerticalSize(3),
                                  color: theme.colorScheme.primary,
                                  indent: getHorizontalSize(235))))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: getSize(52),
                          width: getSize(52),
                          padding: getPadding(all: 3),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder26),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse1946x46,
                              height: getSize(46),
                              width: getSize(46),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(23)),
                              alignment: Alignment.center)))
                ])),
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
