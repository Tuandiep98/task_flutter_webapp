import 'package:flutter/material.dart';

Widget title(title, subTitle, Function f) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            // Text(
            //   subTitle,
            //   style: TextStyle(
            //     fontSize: 14,
            //     fontWeight: FontWeight.w400,
            //     color: Colors.grey[500],
            //   ),
            // ),
          ],
        ),
        Spacer(),
        Text(
          'More',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey[500],
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: Colors.grey[500],
        ),
      ],
    ),
  );
}
