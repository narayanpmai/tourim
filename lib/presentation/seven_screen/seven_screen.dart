import '../seven_screen/widgets/flightschedule_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/custom_outlined_button.dart';

class SevenScreen extends StatelessWidget {
  const SevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 22, right: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getVerticalSize(6),
                          width: getHorizontalSize(49),
                          margin: getMargin(left: 1),
                          onTap: () {
                            onTapImgArrowleftone(context);
                          }),
                      Container(
                          height: getVerticalSize(309),
                          width: getHorizontalSize(346),
                          margin: getMargin(top: 17),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle10,
                                height: getVerticalSize(309),
                                width: getHorizontalSize(346),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20)),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 19, bottom: 10),
                                    child: Text("Toronto, Canada",
                                        style: theme.textTheme.titleLarge)))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 24, right: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text(
                                        "Arriving Date To US ,California",
                                        style: theme.textTheme.titleMedium)),
                                Text("40",
                                    style: CustomTextStyles.titleMediumBold)
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 10),
                          child: Text("November 10,2023 - Wednesday",
                              style: CustomTextStyles.bodyMediumGray800)),
                      Padding(
                          padding: getPadding(left: 1, top: 17),
                          child:
                              Text("Time", style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("14:00",
                              style: CustomTextStyles.bodyMediumGray800)),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 1, top: 19),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(20));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return FlightscheduleItemWidget();
                                  })))
                    ])),
            bottomNavigationBar: CustomOutlinedButton(
                text: "Book Now ",
                margin: getMargin(left: 25, right: 24, bottom: 26),
                buttonStyle: CustomButtonStyles.outlineGrayTL20)));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
