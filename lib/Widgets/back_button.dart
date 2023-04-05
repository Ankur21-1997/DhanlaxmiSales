
import 'package:dhanlaxmi_sales/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({
    Key? key,
    required this.context,
    this.padding,
  }) : super(key: key);

  final BuildContext context;
  final padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: padding == null
            ? const EdgeInsets.all(constants.defaultPadding)
            : padding,
        child: Align(
          alignment: Alignment.topLeft,
          child: Icon(
            Icons.arrow_back_rounded,
            size: 33.0,
          ),
        ),
      ),
    );
  }
}
