import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'components/components.dart';
import 'ui/form/auth.dart';

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
      home: AuthScreen(),
      // Scaffold(
      //   body: Row(
      //     children: <Widget>[
      //       DrawerMenuBar(),
      //       MiddleContainer(),
      //       RightContainer(),
      //     ],
      //   ),
      // ),
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
