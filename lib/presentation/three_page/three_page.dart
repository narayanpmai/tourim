import '../three_page/widgets/listmountain_item_widget.dart';
import '../three_page/widgets/locationprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/app_bar/appbar_image.dart';
import 'package:turismapp/widgets/app_bar/appbar_image_1.dart';
import 'package:turismapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:turismapp/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:turismapp/widgets/app_bar/custom_app_bar.dart';
import 'package:turismapp/widgets/custom_icon_button.dart';
import 'package:turismapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ThreePage extends StatelessWidget {
  ThreePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray100,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(70),
          title: Padding(
            padding: getPadding(
              left: 23,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarSubtitle2(
                  text: "Location",
                  margin: getMargin(
                    right: 83,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Row(
                    children: [
                      AppbarImage(
                        svgPath: ImageConstant.imgLocation,
                        margin: getMargin(
                          bottom: 6,
                        ),
                      ),
                      AppbarSubtitle1(
                        text: "New York, USA",
                        margin: getMargin(
                          left: 5,
                        ),
                      ),
                      AppbarImage(
                        svgPath: ImageConstant.imgArrowdown,
                        margin: getMargin(
                          left: 4,
                          top: 6,
                          bottom: 7,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 29,
                top: 20,
                right: 29,
                bottom: 14,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 14,
            bottom: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 22,
                  right: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomSearchView(
                        controller: searchController,
                        hintText: "Search",
                        hintStyle: theme.textTheme.bodyLarge!,
                        suffix: Container(
                          margin: getMargin(),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgGroup20,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: getVerticalSize(45),
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: getVerticalSize(45),
                      width: getHorizontalSize(43),
                      margin: getMargin(
                        left: 5,
                      ),
                      padding: getPadding(
                        all: 10,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 23,
                  top: 22,
                  right: 23,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Text(
                        "See All",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: getPadding(
                    left: 22,
                    top: 18,
                  ),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: getHorizontalSize(97),
                          decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(38),
                                padding: getPadding(
                                  left: 3,
                                  top: 4,
                                  right: 3,
                                  bottom: 4,
                                ),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder20,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage5,
                                  height: getSize(31),
                                  width: getSize(31),
                                  alignment: Alignment.center,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 13,
                                  bottom: 11,
                                ),
                                child: Text(
                                  "Lakes",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(97),
                          margin: getMargin(
                            left: 3,
                          ),
                          padding: getPadding(
                            all: 8,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage6,
                                height: getSize(24),
                                width: getSize(24),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 14,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "Sea",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(103),
                          margin: getMargin(
                            left: 3,
                          ),
                          padding: getPadding(
                            all: 8,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage624x24,
                                height: getSize(24),
                                width: getSize(24),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: Text(
                                  "Mountain",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(103),
                          margin: getMargin(
                            left: 3,
                          ),
                          padding: getPadding(
                            all: 11,
                          ),
                          decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder20,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage617x18,
                                height: getVerticalSize(17),
                                width: getHorizontalSize(18),
                                margin: getMargin(
                                  top: 1,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 7,
                                  top: 1,
                                ),
                                child: Text(
                                  "Forest",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 30,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Trips",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Text(
                        "See All",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: getVerticalSize(230),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 22,
                      top: 18,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: getHorizontalSize(14),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return LocationprofileItemWidget();
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 22,
                  top: 30,
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Group Trips",
                      style: CustomTextStyles.titleMediumBold,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Text(
                        "See All",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: getMargin(
                    left: 22,
                    top: 18,
                    right: 25,
                  ),
                  padding: getPadding(
                    left: 4,
                    top: 3,
                    right: 4,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ListmountainItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
