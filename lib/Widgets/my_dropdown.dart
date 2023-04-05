
import 'package:dhanlaxmi_sales/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
class MyDropDown extends StatelessWidget {
  const MyDropDown({
    Key? key,
    required this.onChange,
    required this.defaultValue,
    required this.array,
  }) : super(key: key);

  final Function(String?) onChange;
  final String defaultValue;
  final List<String> array;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      // height: 76.h,
      child: Card(
        // margin: const EdgeInsets.only(
        //     top: constants.defaultPadding,
        //     left: constants.defaultPadding,
        //     right: constants.defaultPadding),
        semanticContainer: true,
        elevation: 2,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            side:  BorderSide(color: colorDark, width: 2.0),
            borderRadius: constants.borderRadius),
        child: Row(
          children: [
            const SizedBox(
              width: constants.defaultPadding/2,
            ),
            Expanded(
              child: DropdownButton<String>(
                value: defaultValue,
                underline: Container(),
                isExpanded: true,
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 30,
                ),
                items: array.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
                onChanged: onChange,
              ),
            ),

            const SizedBox(
              width: constants.defaultPadding/2,
            ),
          ],
        ),
      ),
    );
  }
}
