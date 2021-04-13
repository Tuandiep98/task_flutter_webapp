import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_webapp/components/components.dart';
import 'package:task_webapp/utils/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return Container(
      height: 66,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      ]),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 16),
              child: Icon(Icons.menu, color: textPrimary, size: 28)),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 16, 5),
                child: Image.asset("assets/images/logo_flatx.png",
                    height: 37, fit: BoxFit.contain),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                "FlatX Services",
                style: TextStyle(
                    fontSize: 20, color: navLinkColor, fontFamily: fontFamily),
              )),
          Spacer(),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                // onTap: () => openUrl("https://flutter.dev/docs"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("About",
                      style: TextStyle(
                          fontSize: 20,
                          color: navLinkColor,
                          fontFamily: fontFamily)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                // onTap: () => openUrl("https://flutter.dev/showcase"),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Services",
                      style: TextStyle(
                          fontSize: 20,
                          color: navLinkColor,
                          fontFamily: fontFamily)),
                ),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                // onTap: () => openUrl("https://flutter.dev/community"),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Contact",
                        style: TextStyle(
                            fontSize: 20,
                            color: navLinkColor,
                            fontFamily: fontFamily))),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: ImageIcon(
                    AssetImage("assets/images/icon_search_64x.png"),
                    color: navLinkColor,
                    size: 24),
              ),
            ),
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 0),
              child: TextButton(
                onPressed: () =>
                    openUrl("https://flutter.dev/docs/get-started/install"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(primary),
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered))
                          return buttonPrimaryDark;
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return buttonPrimaryDarkPressed;
                        return primary;
                      },
                    ),
                    // Shape sets the border radius from default 3 to 0.
                    shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed))
                          return RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)));
                        return RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)));
                      },
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 22, horizontal: 28)),
                    // Side adds pressed highlight outline.
                    side: MaterialStateProperty.resolveWith<BorderSide>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return BorderSide(
                            width: 3, color: buttonPrimaryPressedOutline);
                      // Transparent border placeholder as Flutter does not allow
                      // negative margins.
                      return BorderSide(width: 3, color: Colors.white);
                    })),
                child: Text(
                  "Get Mobile App",
                  style: buttonTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
