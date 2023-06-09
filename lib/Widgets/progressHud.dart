import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/images.dart';

class ProgressHUD extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final double opacity;
  final Color color;

  ProgressHUD({
    required this.child,
    required this.isLoading,
    this.opacity = 0.3,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = List<Widget>.empty(growable: true);
    widgetList.add(child);
    if (isLoading) {
      final modal = Stack(
        children: [
          Opacity(
            opacity: opacity,
            child: ModalBarrier(dismissible: false, color: color),
          ),
          Center(
            child: Image.asset(
              MyImageAsset.loading,
              width: 111,
              height: 111,
              color: colorDark,
            ),
          ),
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
