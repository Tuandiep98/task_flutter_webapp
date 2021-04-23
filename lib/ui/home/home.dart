import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:task_webapp/ui/drawer_menu/drawer_menu.dart';
import 'package:task_webapp/ui/middle_container/middle_container.dart';
import 'package:task_webapp/ui/right_container/right_container.dart';
import 'package:task_webapp/components/components.dart';

class HomePage extends StatelessWidget {
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
        body: Row(
          children: <Widget>[
            DrawerMenuBar(),
            MiddleContainer(),
            RightContainer(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
