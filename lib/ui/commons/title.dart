import 'package:flutter/material.dart';

Widget title() {
  return Container(
    width: 200,
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
  );
}
