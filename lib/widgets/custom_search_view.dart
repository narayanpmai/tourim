import 'package:flutter/material.dart';
import 'package:turismapp/core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView({
    Key? key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix ??
            Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(15.00),
              ),
              child: IconButton(
                onPressed: () => controller!.clear(),
                icon: Icon(
                  Icons.clear,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            getPadding(
              left: 12,
              top: 12,
              bottom: 12,
            ),
        fillColor: fillColor ?? appTheme.whiteA700,
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(23.00),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(22.00),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(23.00),
                ),
                bottomRight: Radius.circular(
                  getHorizontalSize(22.00),
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray200,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(23.00),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(22.00),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(23.00),
                ),
                bottomRight: Radius.circular(
                  getHorizontalSize(22.00),
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray200,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(23.00),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(22.00),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(23.00),
                ),
                bottomRight: Radius.circular(
                  getHorizontalSize(22.00),
                ),
              ),
              borderSide: BorderSide(
                color: appTheme.gray200,
                width: 1,
              ),
            ),
      );
}
