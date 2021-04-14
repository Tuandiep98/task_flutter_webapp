import 'package:flutter/material.dart';

Widget card(height, width, color, radius, Widget child, String imageUrl) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
        image: DecorationImage(
          image: imageUrl != null
              ? NetworkImage(imageUrl)
              : AssetImage('assets/images/white_background.png'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[350],
            offset: Offset(0, 1),
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    ),
  );
}
