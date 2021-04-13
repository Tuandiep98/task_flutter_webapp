import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget listItem(String title, Function f, IconData i, bool isActive) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isActive ? Color(0xff30336b) : Colors.white,
          boxShadow: isActive
              ? [
                  BoxShadow(
                    color: Color(0xffff7979),
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                ]
              : [],
        ),
        child: GestureDetector(
          onTap: () => f,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 5, 16, 5),
            child: Row(
              children: [
                Icon(
                  i,
                  size: 40,
                  color: isActive ? Colors.white : Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: isActive ? Colors.white : Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
