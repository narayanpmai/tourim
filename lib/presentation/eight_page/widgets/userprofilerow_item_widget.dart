import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  const UserprofilerowItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 9,
        top: 11,
        right: 9,
        bottom: 11,
      ),
      decoration: AppDecoration.fillPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse651x51,
            height: getSize(51),
            width: getSize(51),
            radius: BorderRadius.circular(
              getHorizontalSize(25),
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: 8,
                top: 4,
                bottom: 6,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "",
                        style: theme.textTheme.titleSmall,
                      ),
                      Padding(
                        padding: getPadding(
                          bottom: 4,
                        ),
                        child: Text(
                          "09:32 AM",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSend,
                          height: getVerticalSize(9),
                          width: getHorizontalSize(10),
                          margin: getMargin(
                            bottom: 4,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 2,
                          ),
                          child: Text(
                            "",
                            style: CustomTextStyles.labelLargeMontserrat,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
