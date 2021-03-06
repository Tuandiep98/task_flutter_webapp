import 'package:flutter/material.dart';
import 'package:task_webapp/components/colors.dart';

Widget submitButton(context, text, Function f) {
  return InkWell(
    onTap: f,
    child: Container(
      width: 300,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [primaryLight, primaryDark],
        ),
      ),
      child: Text(
        text.toString(),
        style: TextStyle(
          fontSize: 20,
          color: titleButton,
        ),
      ),
    ),
  );
}
