import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:task_webapp/ui/drawer_menu/drawer_menu.dart';

import 'components/components.dart';
import 'ui/middle_container/middle_container.dart';
import 'ui/right_container/right_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 480,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: background)),
      home: Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size(double.infinity, 66),
          //   child: MenuBar(),
          // ),
          body: Row(
        children: <Widget>[
          DrawerMenuBar(),
          MiddleContainer(),
          RightContainer(),
        ],
      )),
      debugShowCheckedModeBanner: false,
    );
  }
}

List<Widget> blocks = [
  // BlockWrapper(GetStarted()),
  // BlockWrapper(OCRUI()),
  // ResponsiveWrapper(
  //   maxWidth: 1200,
  //   minWidth: 1200,
  //   defaultScale: true,
  //   mediaQueryData: MediaQueryData(size: Size(1200, 640)),
  //   child: RepaintBoundary(
  //     child: Carousel(),
  //   ),
  // ),
  // Footer(),
];

// Disabled codelab block for performance.
//              ResponsiveVisibility(
//                hiddenWhen: [Condition.smallerThan(name: DESKTOP)],
//                child: ResponsiveConstraints(
//                    constraintsWhen: blockWidthConstraints,
//                    child: FlutterCodelab()),
//              ),
