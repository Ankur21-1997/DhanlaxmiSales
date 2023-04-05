
import 'package:dhanlaxmi_sales/utils/constants.dart';
import 'package:dhanlaxmi_sales/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';

class MyTextFiled extends StatelessWidget {
  const MyTextFiled({
    Key? key,
    required this.controller,
    required this.hint,
    this.length,
    this.inputType,
    this.homePage = false,
    this.onSubmit,
    this.color = colorBg,
    this.obscureText = false,
    this.onPress,
    this.maxLines,
    this.enabled = true,
    this.inputFormatters,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final int? length;
  final inputType;
  final bool homePage;
  final Function(String)? onSubmit;
  final Color color;
  final bool obscureText;
  final bool enabled;
  final Function(String)? onPress;
  final int? maxLines;
  final inputFormatters;
  final suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      obscureText: obscureText,
      onChanged: (value) => onSubmit!(value),
      onFieldSubmitted: (value) => onPress!(value),
      controller: controller,
      inputFormatters: length != null
          ? [
              LengthLimitingTextInputFormatter(length),
            ]
          : (inputFormatters ?? []),
      keyboardType: inputType,
      style: textStyle.smallTextColorDark.copyWith(color: colorHeadingText),
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: homePage ? color : colorLightGrey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: constants.borderRadius,

        ),
        labelStyle: textStyle.smallText
            .copyWith(color: colorDark, fontWeight: FontWeight.bold),
      ),
    );
  }
}
