import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

// ignore: must_be_immutable
class FourItemWidget extends StatelessWidget {
  const FourItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(58),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle22,
          height: getSize(58),
          width: getSize(58),
          radius: BorderRadius.circular(
            getHorizontalSize(20),
          ),
          margin: getMargin(
            top: 3,
          ),
        ),
      ),
    );
  }
}
