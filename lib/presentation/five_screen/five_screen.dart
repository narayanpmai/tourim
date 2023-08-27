import '../five_screen/widgets/locationprofile1_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/presentation/eight_page/eight_page.dart';
import 'package:turismapp/presentation/nine_page/nine_page.dart';
import 'package:turismapp/presentation/three_page/three_page.dart';
import 'package:turismapp/widgets/app_bar/appbar_image_1.dart';
import 'package:turismapp/widgets/app_bar/appbar_title.dart';
import 'package:turismapp/widgets/app_bar/custom_app_bar.dart';
import 'package:turismapp/widgets/custom_bottom_bar.dart';
import 'package:turismapp/widgets/custom_text_form_field.dart';

class FiveScreen extends StatelessWidget {
  FiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController imagethirteenController = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(71),
          title: Padding(
            padding: getPadding(
              left: 23,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarTitle(
                  text: "Explore",
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(6),
                    margin: getMargin(
                      top: 5,
                      right: 65,
                    ),
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 5,
                      effect: ScrollingDotsEffect(
                        spacing: 2,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: theme.colorScheme.onPrimaryContainer,
                        dotHeight: getVerticalSize(6),
                        dotWidth: getHorizontalSize(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 31,
                top: 10,
                right: 31,
                bottom: 24,
              ),
            ),
          ],
        ),
        body: SizedBox(
          height: getVerticalSize(664),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: getVerticalSize(313),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle18,
                        height: getVerticalSize(313),
                        width: getHorizontalSize(390),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 5,
                            bottom: 24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Retre Inn",
                                style: CustomTextStyles.bodySmall11,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 7,
                                  top: 2,
                                  right: 29,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgLocationPrimary,
                                      height: getVerticalSize(46),
                                      width: getHorizontalSize(35),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 31,
                                      ),
                                      child: Text(
                                        "Russia",
                                        style: CustomTextStyles.bodySmall11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: getVerticalSize(22),
                                      width: getHorizontalSize(52),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              "Toronto",
                                              style:
                                                  CustomTextStyles.bodySmall11,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Text(
                                              "Your Location",
                                              style: CustomTextStyles
                                                  .bodySmallBluegray400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 16,
                                      ),
                                      decoration: AppDecoration.outlinePrimary1
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3,
                                      ),
                                      child: Container(
                                        height: getSize(6),
                                        width: getSize(6),
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.primary,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(3),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 18,
                                    right: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomTextFormField(
                                        width: getHorizontalSize(81),
                                        controller: imagethirteenController,
                                        margin: getMargin(
                                          top: 92,
                                        ),
                                        hintText: "Start",
                                        hintStyle: CustomTextStyles
                                            .bodyMediumWhiteA700,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                          margin: getMargin(
                                            left: 8,
                                            top: 10,
                                            right: 4,
                                            bottom: 10,
                                          ),
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgImage13,
                                            height: getSize(19),
                                            width: getSize(19),
                                          ),
                                        ),
                                        prefixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(40),
                                        ),
                                        contentPadding: getPadding(
                                          top: 12,
                                          right: 18,
                                          bottom: 12,
                                        ),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .gradientPrimaryToCyan,
                                        filled: false,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 79,
                                          bottom: 38,
                                        ),
                                        child: Text(
                                          "New York",
                                          style: CustomTextStyles.bodySmall11,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgLine6,
                                        height: getVerticalSize(80),
                                        width: getHorizontalSize(101),
                                        margin: getMargin(
                                          left: 81,
                                          bottom: 51,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 17,
                ),
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: getVerticalSize(357),
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      sliderIndex = index;
                    },
                  ),
                  itemCount: 1,
                  itemBuilder: (context, index, realIndex) {
                    return Locationprofile1ItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
