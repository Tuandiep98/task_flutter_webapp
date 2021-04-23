import 'package:flutter/material.dart';

Widget entryField(String title, {bool isPassword = false}) {
  return Container(
    width: 300,
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Color(0xffecf0f1),
            filled: true,
            hintText: title + '...',
            hintStyle: TextStyle(
              fontSize: 14,
              color: Color(0xffbdc3c7),
            ),
          ),
        ),
      ],
    ),
  );
}
