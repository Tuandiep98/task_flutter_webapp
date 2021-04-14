import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget classInfomation() {
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          children: [
            CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 5.0,
              percent: 0.75,
              center: new Text("75%"),
              progressColor: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Class Informations'),
                SizedBox(
                  height: 10,
                ),
                Text('Complete your exam to upgrade level'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        FlatButton(
          color: Colors.white,
          onPressed: () {},
          child: Text('Complete My Exam'),
        ),
      ],
    ),
  );
}
