import 'package:flutter/material.dart';

class LynePage extends StatefulWidget {
  const LynePage({Key? key}) : super(key: key);

  @override
  State<LynePage> createState() => _LynePageState();
}

class _LynePageState extends State<LynePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/name.png"),
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/lyme.png"),
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/lbottom.png"),
            ),
          ],
        ),
      ),
    );
  }
}
