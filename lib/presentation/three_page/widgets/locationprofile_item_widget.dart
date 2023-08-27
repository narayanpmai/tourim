import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

// ignore: must_be_immutable
class LocationprofileItemWidget extends StatelessWidget {
  const LocationprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(150),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: getPadding(
            all: 4,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle7,
                height: getVerticalSize(110),
                width: getHorizontalSize(141),
                radius: BorderRadius.circular(
                  getHorizontalSize(20),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "",
                      style: theme.textTheme.labelLarge,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar1,
                      height: getSize(12),
                      width: getSize(12),
                      margin: getMargin(
                        left: 22,
                        top: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                      ),
                      child: Text(
                        "4.5",
                        style: CustomTextStyles.bodySmallGray70001,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 4,
                    top: 14,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgLocationGray70001,
                        height: getVerticalSize(12),
                        width: getHorizontalSize(8),
                        margin: getMargin(
                          bottom: 1,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          "",
                          style: CustomTextStyles.bodySmallGray7000111,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                  bottom: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 1,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "40 ",
                              style: CustomTextStyles.bodySmallPrimary_1,
                            ),
                            TextSpan(
                              text: "/",
                              style: theme.textTheme.bodySmall,
                            ),
                            TextSpan(
                              text: "Visit",
                              style: CustomTextStyles.bodySmall10,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgFavorite,
                      height: getVerticalSize(17),
                      width: getHorizontalSize(20),
                      margin: getMargin(
                        left: 62,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
