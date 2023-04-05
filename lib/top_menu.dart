import 'package:dhanlaxmi_sales/Widgets/new_button.dart';
import 'package:dhanlaxmi_sales/cellecor_page.dart';
import 'package:dhanlaxmi_sales/lyne_page.dart';
import 'package:dhanlaxmi_sales/utils/text_styles.dart';
import 'package:flutter/material.dart';

class TopMenu extends StatefulWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {

  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40,
                      width: 100,
                      child: NewButton(context: context, function: (){
                        setState(() {
                          selectedTab = 0;
                        });
                      }, buttonText: 'Home',),),
                  SizedBox(
                    height: 40,
                      width: 100,
                      child: NewButton(context: context, function: (){
                        setState(() {
                          selectedTab = 1;
                        });
                        }, buttonText: 'Cellecor',),),
                  SizedBox(
                    height: 40,
                      width: 100,
                      child: NewButton(context: context, function: (){
                        setState(() {
                          selectedTab = 2;
                        });
                      }, buttonText: 'LYME',),),
                  SizedBox(
                    height: 40,
                      width: 100,
                      child: NewButton(context: context, function: (){
                        setState(() {
                          selectedTab = 3;
                        });
                      }, buttonText: 'About',),),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 19,
            child: getPage(),)

          // Container(
          //   color: Colors.black,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Align(
          //           alignment: Alignment.centerLeft,
          //           child: Text("Dhanlaxmi Sales",style: textStyle.heading,)),
          //       SizedBox(
          //         height: 40,
          //         width: 100,
          //         child: NewButton(context: context, function: (){
          //           setState(() {
          //             selectedTab = 0;
          //           });
          //         }, buttonText: 'Home',),),
          //       SizedBox(
          //         height: 40,
          //         width: 100,
          //         child: NewButton(context: context, function: (){
          //           setState(() {
          //             selectedTab = 1;
          //           });
          //         }, buttonText: 'Cellecor',),),
          //       SizedBox(
          //         height: 40,
          //         width: 100,
          //         child: NewButton(context: context, function: (){
          //           setState(() {
          //             selectedTab = 2;
          //           });
          //         }, buttonText: 'LYME',),),
          //       SizedBox(
          //         height: 40,
          //         width: 100,
          //         child: NewButton(context: context, function: (){
          //           setState(() {
          //             selectedTab = 3;
          //           });
          //         }, buttonText: 'About',),),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
  getPage() {
    switch (selectedTab) {
      case 0:
        return CellecorPage();
      case 1:
        return CellecorPage();
      case 2:
        return LynePage();
      case 3:
        return LynePage();

    }
  }
}
