import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

// ignore: must_be_immutable
class Locationprofile1ItemWidget extends StatelessWidget {
  const Locationprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: getVerticalSize(357),
        width: getHorizontalSize(346),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: getVerticalSize(357),
              width: getHorizontalSize(346),
              radius: BorderRadius.circular(
                getHorizontalSize(20),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: getVerticalSize(42),
                width: getHorizontalSize(159),
                margin: getMargin(
                  left: 10,
                  top: 26,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Toronto, Canada",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "12.5 km.",
                        style:
                            CustomTextStyles.titleSmallInterWhiteA700SemiBold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
