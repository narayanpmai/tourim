import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class RedfishlakeprofItemWidget extends StatelessWidget {
  const RedfishlakeprofItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 5,
        bottom: 5,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7,
            height: getVerticalSize(90),
            width: getHorizontalSize(141),
            radius: BorderRadius.circular(
              getHorizontalSize(20),
            ),
            margin: getMargin(
              bottom: 2,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "",
                      style: theme.textTheme.labelLarge,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgStar112x12,
                      height: getSize(12),
                      width: getSize(12),
                      margin: getMargin(
                        left: 54,
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
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 6,
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
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 6,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "40",
                          style: CustomTextStyles.bodySmallPrimary,
                        ),
                        TextSpan(
                          text: " ",
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
                CustomOutlinedButton(
                  height: getVerticalSize(19),
                  width: getHorizontalSize(84),
                  text: "Book Now ",
                  margin: getMargin(
                    left: 1,
                    top: 6,
                  ),
                  buttonTextStyle: CustomTextStyles.bodySmallWhiteA7009,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
