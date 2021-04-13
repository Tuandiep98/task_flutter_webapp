import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:task_webapp/ui/middle_container/widgets/card.dart';
import 'package:table_calendar/table_calendar.dart';

import 'widgets/search_bar.dart';
import 'widgets/task.dart';

class RightContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [Condition.largerThan(name: MOBILE)],
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 400,
        decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
          BoxShadow(
            color: Colors.grey[350],
            offset: Offset(0, 2),
            blurRadius: 0,
          )
        ]),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            searchbar(),
            Spacer(),
            card(
              MediaQuery.of(context).size.height / 2.3,
              350,
              Colors.white,
              10,
              calendar(),
            ),
            card(MediaQuery.of(context).size.height / 2.6, 350, Colors.white,
                10, task()),
          ],
        ),
      ),
    );
  }
}

Widget calendar() {
  return TableCalendar(
    firstDay: DateTime.utc(2010, 10, 16),
    lastDay: DateTime.utc(2030, 3, 14),
    focusedDay: DateTime.now(),
  );
}
