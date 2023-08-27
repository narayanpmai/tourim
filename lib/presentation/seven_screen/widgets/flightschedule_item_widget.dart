import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

// ignore: must_be_immutable
class FlightscheduleItemWidget extends StatelessWidget {
  const FlightscheduleItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 4,
        top: 8,
        right: 4,
        bottom: 8,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 9,
            ),
            child: Text(
              "",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            height: getVerticalSize(45),
            width: getHorizontalSize(333),
            margin: getMargin(
              top: 7,
              bottom: 4,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgGroup49,
                  height: getVerticalSize(12),
                  width: getHorizontalSize(305),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgAirplane,
                  height: getSize(41),
                  width: getSize(41),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 9,
                    ),
                    child: Text(
                      "14:00",
                      style: CustomTextStyles.bodySmall10_1,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "California",
                    style: CustomTextStyles.bodySmall10_1,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Toronto",
                    style: CustomTextStyles.bodySmall10_1,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      right: 4,
                    ),
                    child: Text(
                      "19:00",
                      style: CustomTextStyles.bodySmall10_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
