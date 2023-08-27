import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

// ignore: must_be_immutable
class ListmountainItemWidget extends StatelessWidget {
  const ListmountainItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle8,
          height: getVerticalSize(126),
          width: getHorizontalSize(141),
          radius: BorderRadius.circular(
            getHorizontalSize(15),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
            top: 16,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Mountain Trip",
                style: CustomTextStyles.titleSmallInter,
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 9,
                ),
                child: Text(
                  "Seelisburg",
                  style: CustomTextStyles.bodySmallGray70001_1,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 7,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocationGray70001,
                      height: getVerticalSize(11),
                      width: getHorizontalSize(8),
                      margin: getMargin(
                        bottom: 3,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 3,
                      ),
                      child: Text(
                        "Norway",
                        style: CustomTextStyles.bodySmallGray7000111,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(14),
                      width: getHorizontalSize(44),
                      margin: getMargin(
                        bottom: 7,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse6,
                            height: getSize(14),
                            width: getSize(14),
                            radius: BorderRadius.circular(
                              getHorizontalSize(7),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse7,
                            height: getSize(14),
                            width: getSize(14),
                            radius: BorderRadius.circular(
                              getHorizontalSize(7),
                            ),
                            alignment: Alignment.centerLeft,
                            margin: getMargin(
                              left: 9,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse8,
                            height: getSize(14),
                            width: getSize(14),
                            radius: BorderRadius.circular(
                              getHorizontalSize(7),
                            ),
                            alignment: Alignment.centerRight,
                            margin: getMargin(
                              right: 14,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse9,
                            height: getSize(14),
                            width: getSize(14),
                            radius: BorderRadius.circular(
                              getHorizontalSize(7),
                            ),
                            alignment: Alignment.centerRight,
                            margin: getMargin(
                              right: 7,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse10,
                            height: getSize(14),
                            width: getSize(14),
                            radius: BorderRadius.circular(
                              getHorizontalSize(7),
                            ),
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 2,
                        top: 4,
                        bottom: 11,
                      ),
                      child: Text(
                        "110+ Orders ",
                        style: CustomTextStyles.montserratOnPrimary,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 75,
                        top: 10,
                      ),
                      child: Text(
                        "80%",
                        style: theme.textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 2,
                ),
                child: Container(
                  height: getVerticalSize(6),
                  width: getHorizontalSize(164),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(3),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(3),
                    ),
                    child: LinearProgressIndicator(
                      value: 0.83,
                      backgroundColor: appTheme.blueGray100,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
