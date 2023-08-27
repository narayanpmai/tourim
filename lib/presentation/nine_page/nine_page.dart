import '../nine_page/widgets/listking_duke_item_widget.dart';
import '../nine_page/widgets/redfishlakeprof_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/app_bar/appbar_image_2.dart';
import 'package:turismapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:turismapp/widgets/app_bar/custom_app_bar.dart';

class NinePage extends StatelessWidget {
  const NinePage({Key? key}) : super(key: key);

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
                title: AppbarSubtitle1(text: "Saved Trips")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 29, right: 23, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 6),
                          child: Text("Events",
                              style: theme.textTheme.titleMedium)),
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(10));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return RedfishlakeprofItemWidget();
                              })),
                      Padding(
                          padding: getPadding(left: 6, top: 264),
                          child: Text("Packages",
                              style: theme.textTheme.titleMedium)),
                      Expanded(
                          child: Container(
                              margin: getMargin(top: 18, right: 2),
                              padding: getPadding(
                                  left: 5, top: 4, right: 5, bottom: 4),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder20),
                              child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return ListkingDukeItemWidget();
                                  })))
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
