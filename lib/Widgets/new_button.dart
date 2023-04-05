
import 'package:dhanlaxmi_sales/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class NewButton extends StatelessWidget {
  final BuildContext context;
  final String buttonText;
  final double width;
  final double height;
  final Function function;
  var color;
  bool border = false;
  bool isRadius = true;
  final Widget child;
  final bool rDefaultWidget;
  final TextStyle? textStyle;
  final margin;

  NewButton({
    required this.context,
    this.buttonText = "Text",
    required this.function,
    this.border = false,
    this.width = double.infinity,
    this.height = 40,
    this.color = colorBlack,
    this.isRadius = true,
    this.rDefaultWidget = true,
    this.child = const Text("default"),
    this.textStyle,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: () => function(),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? border
                        ? colorCustom.shade50
                        : Colors.white.withOpacity(0.3)
                    : null;
              },
            ),
            backgroundColor: border
                ? MaterialStateProperty.all(Colors.white)
                : MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: constants.borderRadius,
                side: border
                    ? BorderSide(
                        color: color,
                      )
                    : BorderSide.none,
              ),
            ),
          ),
          child: rDefaultWidget
              ? Center(
                  child: Text(
                  buttonText,
                  style: textStyle,
                ))
              : child,
        ),
      ),
    );
  }
}
