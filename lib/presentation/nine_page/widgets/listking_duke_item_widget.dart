import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class ListkingDukeItemWidget extends StatelessWidget {
  const ListkingDukeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: getVerticalSize(91),
          width: getHorizontalSize(141),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle790x141,
                height: getVerticalSize(90),
                width: getHorizontalSize(141),
                radius: BorderRadius.circular(
                  getHorizontalSize(15),
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle81,
                height: getVerticalSize(91),
                width: getHorizontalSize(140),
                radius: BorderRadius.circular(
                  getHorizontalSize(20),
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "King + Duke",
                    style: theme.textTheme.labelLarge,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgStar12,
                    height: getSize(12),
                    width: getSize(12),
                    margin: getMargin(
                      left: 60,
                      top: 3,
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
                  top: 4,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocationGray70001,
                      height: getVerticalSize(12),
                      width: getHorizontalSize(8),
                      margin: getMargin(
                        top: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                      ),
                      child: Text(
                        "Toronto",
                        style: CustomTextStyles.bodySmallGray7000111,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "120 ",
                        style: CustomTextStyles.bodySmallPrimary,
                      ),
                      TextSpan(
                        text: "/ ",
                        style: theme.textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "3 day visit",
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
                  top: 6,
                ),
                buttonTextStyle: CustomTextStyles.bodySmallWhiteA7009,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
