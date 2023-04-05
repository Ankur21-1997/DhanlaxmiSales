library my_prj.globals;

import 'package:flutter/material.dart';

import 'colors.dart';

class textStyle {
  static final TextStyle heading = TextStyle(
      color: colorHeadingText, fontWeight: FontWeight.bold, fontSize: 16);


  static final TextStyle Topheading = TextStyle(
      color: colorDark, fontWeight: FontWeight.bold, fontSize: 20);

  static final TextStyle subHeading = TextStyle(
      color: colorSubHeadingText, fontWeight: FontWeight.w400, fontSize: 14);

  static final TextStyle subHeadingColorDark =
      subHeading.copyWith(color: colorHeadingText, fontWeight: FontWeight.bold);

  static final TextStyle smallText = TextStyle(
      color: colorSubHeadingText,
      fontWeight: FontWeight.normal,
      fontSize: 13);

  static final TextStyle smallTextColorDark = TextStyle(
      color: colorHeadingText, fontWeight: FontWeight.bold, fontSize: 13);

  static final TextStyle button = TextStyle(
      color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18);

  static final TextStyle subButton = TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14);
}
