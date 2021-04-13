import 'package:flutter/material.dart';

Widget card(height, width, color, radius, Widget child) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    ),
  );
}
