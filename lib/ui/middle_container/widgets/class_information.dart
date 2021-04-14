import 'package:flutter/material.dart';

Widget classInfomation(height, width) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Write down your ideas',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '#idea #todo\'s #morning',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Somtimes, on Mondays, when server at A16 are...',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.timelapse_rounded,
              color: Colors.white,
              size: 24,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '3 Days',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Spacer(),
            Container(
              width: 80,
              height: 40,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://uploadbeta.com/_s/upload/2019/09/19/0340190420c69f887f0f357ad99a8f43.png',
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://uploadbeta.com/_s/upload/2019/09/19/0340190420c69f887f0f357ad99a8f43.png',
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://uploadbeta.com/_s/upload/2019/09/19/0340190420c69f887f0f357ad99a8f43.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}
