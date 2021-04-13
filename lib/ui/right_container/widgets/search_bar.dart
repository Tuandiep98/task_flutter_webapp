import 'package:flutter/material.dart';

Widget searchbar() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
    child: Container(
      child: Row(
        children: [
          Container(
            width: 250,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
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
              child: Row(
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey[350],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: Colors.grey[350],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[350],
                  offset: Offset(0, 1),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Icon(
              Icons.notifications_rounded,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    ),
  );
}
