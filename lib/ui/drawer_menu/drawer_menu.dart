import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:task_webapp/models/toolbar.dart';
import 'package:task_webapp/ui/form/auth.dart';

import 'widgets/list_item.dart';

class DrawerMenuBar extends StatefulWidget {
  @override
  _DrawerMenuBarState createState() => _DrawerMenuBarState();
}

class _DrawerMenuBarState extends State<DrawerMenuBar> {
  List<ToolBar> tools = [
    ToolBar('Dashboard', Icons.dashboard_rounded, true),
    ToolBar('Class', Icons.school_rounded, false),
    ToolBar('Schedule', Icons.storage_rounded, false),
    ToolBar('Homework', Icons.book_rounded, false),
    ToolBar('Teachers', Icons.group_rounded, false),
    ToolBar('Settings', Icons.settings, false),
  ];

  @override
  void initState() {
    super.initState();
  }

  active(ToolBar i) {
    tools.forEach((e) {
      if (e.name != i.name)
        setState(() {
          e.isActive = false;
        });
      else
        setState(() {
          e.isActive = true;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [Condition.largerThan(name: MOBILE)],
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 300,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey[350], offset: Offset(0, 2), blurRadius: 4)
        ]),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Alisha',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/customer-choice.png',
                    scale: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height - 200,
                child: ListView.builder(
                  itemCount: tools.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: listItem(
                        tools[index],
                      ),
                      onTap: () {
                        active(tools[index]);
                      },
                    );
                  },
                ),
              ),
            ),
            InkWell(
              child: listItem(ToolBar('Logout', Icons.logout, false)),
              onTap: logout,
            ),
          ],
        ),
      ),
    );
  }

  void logout() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => AuthScreen(),
      ),
    );
  }
}
