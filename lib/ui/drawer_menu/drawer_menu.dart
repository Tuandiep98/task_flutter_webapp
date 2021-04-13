import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'widgets/list_item.dart';

class DrawerMenuBar extends StatelessWidget {
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
            listItem('Dashboard', () {}, Icons.dashboard_rounded, true),
            listItem('Class', () {}, Icons.storage_rounded, false),
            listItem('Schedule', () {}, Icons.calendar_today_rounded, false),
            listItem('Homework', () {}, Icons.book_rounded, false),
            listItem('Teachers', () {}, Icons.group_outlined, false),
            listItem('Settings', () {}, Icons.settings, false),
            Spacer(),
            listItem('Logout', () {}, Icons.logout, false),
          ],
        ),
      ),
    );
  }
}
