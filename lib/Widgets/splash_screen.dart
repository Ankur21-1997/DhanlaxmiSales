import 'package:flutter/cupertino.dart';

class SplaceScreen extends StatelessWidget {
  const SplaceScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      "images/app-logo.png",
      height: 188.0,
    ));
  }
}
