import '../eight_page/widgets/userprofilerow_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/app_bar/appbar_image_1.dart';
import 'package:turismapp/widgets/app_bar/appbar_image_2.dart';
import 'package:turismapp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:turismapp/widgets/app_bar/custom_app_bar.dart';
import 'package:turismapp/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class EightPage extends StatelessWidget {
  EightPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(72),
                leading: AppbarImage2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 23),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle1(text: "Chat Room"),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgEdit,
                      margin: getMargin(left: 24, right: 24, bottom: 2))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 15, bottom: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          margin: getMargin(left: 25, top: 3, right: 24),
                          controller: searchController,
                          hintText: "Search",
                          hintStyle: theme.textTheme.bodyLarge!,
                          prefix: Container(
                              padding: getPadding(
                                  left: 17, top: 14, right: 30, bottom: 14),
                              margin: getMargin(),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(
                                          getHorizontalSize(23)),
                                      topRight: Radius.circular(
                                          getHorizontalSize(22)),
                                      bottomLeft: Radius.circular(
                                          getHorizontalSize(23)),
                                      bottomRight: Radius.circular(
                                          getHorizontalSize(22))),
                                  border: Border.all(
                                      color: appTheme.gray200,
                                      width: getHorizontalSize(1))),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(45)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchController.clear();
                                  },
                                  icon: Icon(Icons.clear, color: Colors.grey.shade600))),
                          contentPadding: getPadding(top: 12, right: 30, bottom: 12)),
                      Spacer(),
                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 24, right: 24),
                              child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(15));
                                  },
                                  itemCount: 7,
                                  itemBuilder: (context, index) {
                                    return UserprofilerowItemWidget();
                                  }))),
                      Container(
                          padding: getPadding(
                              left: 30, top: 12, right: 30, bottom: 12),
                          decoration: AppDecoration.outlineBlueGray,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage1122x22,
                                          height: getSize(22),
                                          width: getSize(22)),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgLocationOnprimarycontainer,
                                          height: getVerticalSize(23),
                                          width: getHorizontalSize(17)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgImage923x23,
                                          height: getSize(23),
                                          width: getSize(23)),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgFavoriteOnprimarycontainer,
                                          height: getVerticalSize(21),
                                          width: getHorizontalSize(22)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgUser,
                                          height: getSize(21),
                                          width: getSize(21))
                                    ]),
                                Container(
                                    height: getSize(8),
                                    width: getSize(8),
                                    margin: getMargin(top: 5),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(4))))
                              ]))
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
