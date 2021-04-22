import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_webapp/models/toolbar.dart';

Widget listItem(ToolBar t) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: t.isActive ? Color(0xff30336b) : Colors.white,
          boxShadow: t.isActive
              ? [
                  BoxShadow(
                    color: Color(0xffff7979),
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                ]
              : [],
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 5, 16, 5),
          child: Row(
            children: [
              Icon(
                t.icon,
                size: 40,
                color: t.isActive ? Colors.white : Colors.grey[400],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                t.name,
                style: TextStyle(
                  fontSize: 18,
                  color: t.isActive ? Colors.white : Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
