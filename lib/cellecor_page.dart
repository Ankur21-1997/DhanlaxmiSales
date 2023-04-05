import 'package:flutter/material.dart';

class CellecorPage extends StatefulWidget {
  const CellecorPage({Key? key}) : super(key: key);

  @override
  State<CellecorPage> createState() => _CellecorPageState();
}

class _CellecorPageState extends State<CellecorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/name.png"),
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/cellecor.png"),
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/bottom.png"),
            ),
          ],
        ),
      ),
    );
  }
}
