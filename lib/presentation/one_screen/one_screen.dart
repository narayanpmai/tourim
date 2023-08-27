import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/custom_checkbox_button.dart';
import 'package:turismapp/widgets/custom_elevated_button.dart';
import 'package:turismapp/widgets/custom_outlined_button.dart';
import 'package:turismapp/widgets/custom_text_form_field.dart';

class OneScreen extends StatelessWidget {
  OneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  bool englishName = false;

  TextEditingController usernamevalueController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(301),
                      width: getHorizontalSize(367),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup1,
                            height: getVerticalSize(172),
                            width: getHorizontalSize(254),
                            alignment: Alignment.topRight,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: getHorizontalSize(218),
                              margin: getMargin(
                                top: 12,
                              ),
                              child: Text(
                                "Let’s start your \nJourney together! ",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineSmall,
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgIonearth,
                            height: getSize(208),
                            width: getSize(208),
                            alignment: Alignment.bottomLeft,
                            margin: getMargin(
                              left: 68,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 37,
                        top: 30,
                      ),
                      child: Text(
                        "Username",
                        style: CustomTextStyles.labelLargeGray700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 37,
                      top: 7,
                      right: 42,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "heba@123",
                            style: CustomTextStyles.bodyMediumOnPrimary,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: getSize(20),
                          width: getSize(20),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Divider(
                      indent: getHorizontalSize(37),
                      endIndent: getHorizontalSize(37),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(550),
                    width: double.maxFinite,
                    margin: getMargin(
                      top: 19,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: getVerticalSize(522),
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Opacity(
                                  opacity: 0.4,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgIonearthPrimary,
                                    height: getVerticalSize(364),
                                    width: getHorizontalSize(390),
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 36,
                                      top: 44,
                                      right: 36,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "Password",
                                          hintStyle: CustomTextStyles
                                              .labelLargeGray700,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: true,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 18,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomCheckboxButton(
                                                text: "Remember me",
                                                value: englishName,
                                                onChange: (value) {
                                                  englishName = value;
                                                },
                                              ),
                                              Text(
                                                "Forgot Password?",
                                                style: CustomTextStyles
                                                    .labelMediumInterGray700,
                                              ),
                                            ],
                                          ),
                                        ),
                                        CustomElevatedButton(
                                          text: "Sign in",
                                          margin: getMargin(
                                            top: 28,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 29,
                                          ),
                                          child: Text(
                                            "Don’t have an Account?",
                                            style: CustomTextStyles
                                                .bodySmallGray700,
                                          ),
                                        ),
                                        CustomOutlinedButton(
                                          text: "Create Account",
                                          margin: getMargin(
                                            top: 29,
                                          ),
                                          buttonStyle:
                                              CustomButtonStyles.outlinePrimary,
                                          buttonTextStyle: CustomTextStyles
                                              .titleSmallInterPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          width: getHorizontalSize(316),
                          controller: usernamevalueController,
                          hintText: "hebaqaisar",
                          hintStyle: CustomTextStyles.bodyMediumOnPrimary,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.topCenter,
                          suffix: Container(
                            margin: getMargin(
                              left: 30,
                              top: 11,
                              right: 5,
                              bottom: 11,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgClock,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(53),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
