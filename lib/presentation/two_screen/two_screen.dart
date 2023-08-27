import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';
import 'package:turismapp/widgets/custom_checkbox_button.dart';
import 'package:turismapp/widgets/custom_elevated_button.dart';
import 'package:turismapp/widgets/custom_text_form_field.dart';

class TwoScreen extends StatelessWidget {
  TwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController usernameoneController = TextEditingController();

  TextEditingController groupNineteenController = TextEditingController();

  bool englishName = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: getVerticalSize(797),
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Opacity(
                    opacity: 0.3,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIonearthWhiteA700,
                      height: getVerticalSize(183),
                      width: getHorizontalSize(189),
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 12,
                      ),
                      child: Text(
                        "Welcome Back!",
                        style: CustomTextStyles.headlineSmallWhiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: getVerticalSize(522),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgIonearthWhiteA700364x390,
                              height: getVerticalSize(364),
                              width: getHorizontalSize(390),
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 107,
                                right: 107,
                                bottom: 180,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup14,
                                    height: getVerticalSize(28),
                                    width: getHorizontalSize(124),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 24,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Don’t have an Account? ",
                                            style: CustomTextStyles
                                                .bodySmallWhiteA70010,
                                          ),
                                          TextSpan(
                                            text: "Sign up here",
                                            style: CustomTextStyles
                                                .labelMediumInterWhiteA700
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 24,
                        top: 60,
                        right: 24,
                      ),
                      padding: getPadding(
                        left: 32,
                        top: 49,
                        right: 32,
                        bottom: 49,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgIonearth,
                            height: getSize(208),
                            width: getSize(208),
                          ),
                          CustomTextFormField(
                            controller: usernameoneController,
                            margin: getMargin(
                              top: 30,
                            ),
                            hintText: "heba@123",
                            hintStyle: CustomTextStyles.bodyMediumWhiteA700,
                            prefix: Container(
                              margin: getMargin(
                                left: 17,
                                top: 15,
                                right: 9,
                                bottom: 16,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgMail,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(45),
                            ),
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 15,
                                right: 16,
                                bottom: 15,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgCheckmark,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(45),
                            ),
                            contentPadding: getPadding(
                              top: 13,
                              bottom: 13,
                            ),
                          ),
                          CustomTextFormField(
                            controller: groupNineteenController,
                            margin: getMargin(
                              top: 20,
                            ),
                            textInputAction: TextInputAction.done,
                            suffix: SizedBox(
                              child: CustomImageView(
                                svgPath: ImageConstant.imgGroup18,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(45),
                            ),
                            obscureText: true,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineGray,
                            filled: false,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomCheckboxButton(
                                  text: "Remember me",
                                  value: englishName,
                                  textStyle: CustomTextStyles
                                      .labelMediumInterGray70001Bold,
                                  onChange: (value) {
                                    englishName = value;
                                  },
                                ),
                                Text(
                                  "Forgot Password?",
                                  style: CustomTextStyles
                                      .labelMediumInterGray70001Bold,
                                ),
                              ],
                            ),
                          ),
                          CustomElevatedButton(
                            text: "Sign in",
                            margin: getMargin(
                              top: 28,
                              bottom: 57,
                            ),
                          ),
                        ],
                      ),
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
