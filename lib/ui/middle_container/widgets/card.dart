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
          image: NetworkImage(imageUrl != null
              ? imageUrl
              : 'https://i.pinimg.com/originals/f5/05/24/f50524ee5f161f437400aaf215c9e12f.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    ),
  );
}
