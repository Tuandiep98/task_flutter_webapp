import 'package:flutter/material.dart';
import 'date_list.dart';
import 'light_colors.dart';
import 'task_container.dart';

Widget _dashedText() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    child: Text(
      '------------------------------------------',
      maxLines: 1,
      style: TextStyle(fontSize: 20.0, color: Colors.black12, letterSpacing: 5),
    ),
  );
}

Widget task() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(
      10,
      0,
      10,
      0,
    ),
    child: Column(
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemCount: time.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${time[index]} ${time[index] > 8 ? 'PM' : 'AM'}',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 5,
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        _dashedText(),
                        TaskContainer(
                          title: 'Project Research',
                          subtitle:
                              'Discuss with the colleagues about the future plan',
                          boxColor: LightColors.kLightYellow2,
                        ),
                        _dashedText(),
                        TaskContainer(
                          title: 'Work on Medical App',
                          subtitle: 'Add medicine tab',
                          boxColor: LightColors.kLavender,
                        ),
                        _dashedText(),
                        TaskContainer(
                          title: 'Call',
                          subtitle: 'Call to david',
                          boxColor: LightColors.kPalePink,
                        ),
                        _dashedText(),
                        TaskContainer(
                          title: 'Design Meeting',
                          subtitle:
                              'Discuss with designers for new task for the medical app',
                          boxColor: LightColors.kLightGreen,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
