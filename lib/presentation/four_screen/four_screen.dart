import '../four_screen/widgets/four_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/app_bar/appbar_image_2.dart';
import 'package:turismapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:turismapp/widgets/app_bar/custom_app_bar.dart';
import 'package:turismapp/widgets/custom_outlined_button.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(72),
                leading: AppbarImage2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 23),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Lake View")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(all: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: getVerticalSize(370),
                          width: getHorizontalSize(344),
                          margin: getMargin(left: 1),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle7,
                                    height: getVerticalSize(370),
                                    width: getHorizontalSize(344),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                        height: getVerticalSize(370),
                                        child: ListView.separated(
                                            padding: getPadding(
                                                left: 43,
                                                top: 301,
                                                right: 43,
                                                bottom: 8),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  width: getHorizontalSize(7));
                                            },
                                            itemCount: 4,
                                            itemBuilder: (context, index) {
                                              return FourItemWidget();
                                            })))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 28),
                          child: Row(children: [
                            Text("RedFish Lake",
                                style: CustomTextStyles.titleLargeBluegray900),
                            Spacer(),
                            CustomImageView(
                                svgPath: ImageConstant.imgStar122x21,
                                height: getVerticalSize(22),
                                width: getHorizontalSize(21),
                                margin: getMargin(top: 3)),
                            Padding(
                                padding: getPadding(left: 1, top: 3),
                                child: Text("4.5",
                                    style:
                                        CustomTextStyles.bodyLargeGray7000117))
                          ])),
                      Padding(
                          padding: getPadding(left: 1, top: 15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgLocationGray70001,
                                height: getVerticalSize(18),
                                width: getHorizontalSize(13),
                                margin: getMargin(bottom: 1)),
                            Padding(
                                padding: getPadding(left: 4),
                                child: Text("Idaho",
                                    style:
                                        CustomTextStyles.bodyMediumGray70001))
                          ])),
                      Container(
                          width: getHorizontalSize(343),
                          margin: getMargin(left: 1, top: 22, bottom: 3),
                          child: Text(
                              "What is Redfish Lake known for?\nRedfish Lake is the final stop on the longest \nPacific salmon run in North America, which\n requires long-distance swimmers, such as \nSockeye and Chinook Salmon, to travel over \n900 miles upstream to return to their spawning \ngrounds.\nRedfish Lake is an alpine lake in Custer County,\n Idaho, just south of Stanley. It is the largest lake \nwithin the Sawtooth National Recreation Area.",
                              maxLines: 9,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumGray70001))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 23, right: 33, bottom: 27),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomOutlinedButton(
                          text: "Booking Now | 40",
                          buttonStyle: CustomButtonStyles.outlineGray)),
                  CustomImageView(
                      svgPath: ImageConstant.imgFavoriteOnprimarycontainer30x33,
                      height: getVerticalSize(30),
                      width: getHorizontalSize(33),
                      margin: getMargin(left: 5, top: 7, bottom: 8))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
