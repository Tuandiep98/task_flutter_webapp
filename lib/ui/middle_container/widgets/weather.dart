import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget weather() {
  return Container(
    padding: EdgeInsets.all(30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/cloudy.png',
              fit: BoxFit.cover,
              scale: 5,
            ),
            Text(
              'Yuanyang Country',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'South of Kunmingcity',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white60,
              ),
            ),
            Text(
              'as of 3:44 am GST',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/humidity.png',
              fit: BoxFit.cover,
              scale: 12,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  'Humidity',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '25%',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/sun.png',
              fit: BoxFit.cover,
              scale: 12,
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Text(
                  'Sunrire',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '6:10am',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
